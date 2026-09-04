# gov4j-thirdparty

This repository holds the modifications Link.it applies to a number of third-party Java
libraries that [GovWay](https://github.com/link-it/govway) and
[GovPay](https://github.com/link-it/govpay) depend on.

For each library and version it contains the patch files, the rationale behind every
patch, and the scripts needed to reproduce the build. The upstream sources themselves are
**not** included: they are downloaded from the original project at build time. The
resulting artifacts are published on Maven Central under the `org.gov4j.thirdparty.*`
namespaces.

The purpose is reproducibility. GovWay and GovPay are released under GPLv3 and are used
directly by Italian public administrations; this repository exists so that those
administrations, their in-house companies and their system integrators can rebuild the
products from source without relying on any Link.it-hosted infrastructure.

This is not a fork. Each patch is a targeted change, kept as small as possible, applied
because the upstream release does not yet carry a fix we need — most often a security
remediation or an interoperability constraint from the Italian
[Modello di Interoperabilità](https://www.agid.gov.it/it/infrastrutture/sistema-pubblico-connettivita/modello-interoperabilita).
We do not track upstream development: once an upstream release makes a patch unnecessary,
we stop producing new revisions of that mirror, while the directories of the versions
already published stay in place.

## Repository layout

```
thirdparty/<group-path>/<library>-<version>/gov4j-<revision>/
    patch_src/
        *.patch              modifications, applicable to the upstream source
        *.patch.README       why each modification was made
        README.compile       how to obtain and patch the upstream source
    <artifact-id>/
        pom.xml              the POM used to publish that artifact
    buildArtifact.sh         assembles the jar
    buildDeployDirArtifact.sh
    README.build
template/                    the POM templates the per-artifact POMs are generated from
```

`<revision>` distinguishes successive iterations of our patch set against the same
upstream version: `cxf-4.2.3/gov4j-2` is the second revision of our changes to Apache CXF
4.2.3, published as version `4.2.3-gov4j-2`.

Documentation inside `patch_src/` is written in Italian, since it is primarily addressed
to the Italian public administrations that operate these products.

## Rebuilding an artifact

Every mirror carries its own instructions in `patch_src/README.compile`, including the
exact upstream download URL and the modules to build. The general shape is:

```bash
cd thirdparty/org/apache/cxf/cxf-4.2.3/gov4j-2

# 1. obtain and patch the upstream source, as described in patch_src/README.compile
wget https://archive.apache.org/dist/cxf/4.2.3/apache-cxf-4.2.3-src.tar.gz
tar xzf apache-cxf-4.2.3-src.tar.gz
patch -p0 < patch_src/sorgenti.patch
cd apache-cxf-4.2.3-src/core/ && mvn install && cd ../../

# 2. assemble the jar
bash buildArtifact.sh

# 3. build it
cd cxf-core && mvn clean package
```

Use **`mvn clean package`**, not `mvn clean deploy`. The POMs in this repository are the
ones used to publish the artifacts, so they include GPG signing (`maven-gpg-plugin`) and
Maven Central publication (`central-publishing-maven-plugin`). Those plugins concern
maintainers only: `deploy` would attempt to sign with Link.it's key and publish under the
`org.gov4j` namespace. Some `README.build` files say `mvn clean deploy` because they are
written from the maintainer's point of view — read `package` instead.

Plugin versions differ from one mirror to another on purpose: each `pom.xml` records the
toolchain that artifact was actually built with, not the current one.

## How published artifacts point back here

The `<scm>` element of each published POM points to the directory this repository holds
for that exact library version and revision, on `main`:

    https://github.com/link-it/gov4j-thirdparty/tree/main/thirdparty/org/apache/cxf/cxf-4.2.3/gov4j-2

The path itself carries the version and the revision, so it identifies one immutable
release: a later release adds a new directory rather than changing an existing one.
Directories of released mirrors are therefore never modified or removed, so that the URLs
declared by artifacts already on Maven Central keep resolving.

POMs published before this repository existed declare `scm:none`. The patch sets for those
versions are here all the same, in the directory matching their coordinates, and their
`-sources.jar` on Maven Central carries the patched sources. Newer releases declare the
SCM location correctly.

## Published artifacts

All artifacts live under the `org.gov4j.thirdparty.*` prefix, which mirrors the upstream
coordinates — `org.apache.cxf:cxf-core` becomes
`org.gov4j.thirdparty.org.apache.cxf:cxf-core`. The originals are always recoverable from
the `original.groupId`, `original.artifactId` and `original.version` properties in each
POM.

[Browse them on Maven Central](https://central.sonatype.com/search?namespace=org.gov4j.thirdparty)

Mirrors come in three kinds, matching the three templates under `template/`:

- **recompiled** — the upstream source is patched and rebuilt. The `-sources.jar` contains
  the full patched source of the module, and the jar itself embeds the `.patch` files, the
  modified `.java` sources and a README per patch.
- **repackaged** — the upstream jar is modified without recompiling. The jar embeds
  `README.repackage` describing what was changed.
- **republished** — a library missing from public repositories, republished unmodified.

## Licensing

Every mirrored library keeps the license of its upstream project, declared in the
`<licenses>` element of its POM. Patching a library does not change its license, and this
repository claims no ownership over the upstream code.

The POM of the specific artifact is the authoritative statement of its license.

The patch files and build scripts in this repository are released under the same license
as the library each one applies to.

## Reporting issues

Problems with a patch, or with a mirror that should be dropped because upstream has fixed
the issue, can be reported in this repository's issue tracker. Bugs in GovWay or GovPay
belong in their own repositories. Bugs in the upstream libraries should go upstream — we
carry patches, we do not maintain those projects.
