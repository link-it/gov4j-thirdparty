# facelets-taglib-jsf12
bash buildDeployDirArtifact.sh facelets-taglib-jsf12
cp rebuild_jar/README.jsf12 facelets-taglib-jsf12/src/README.jsf12.patch
cp rebuild_jar/README facelets-taglib-jsf12/src/README.patch
cp rebuild_jar/README.jsf12 facelets-taglib-jsf12/javadoc/README.jsf12.patch
cp rebuild_jar/README facelets-taglib-jsf12/javadoc/README.patch
rm facelets-taglib-jsf12/classes/patch.README
cp facelets-taglib-jsf12/src/*.patch facelets-taglib-jsf12/classes/

# facelets-taglib-jsf20
bash buildDeployDirArtifact.sh facelets-taglib-jsf20
cp rebuild_jar/README.jsf20 facelets-taglib-jsf20/src/README.jsf20.patch
cp rebuild_jar/README facelets-taglib-jsf20/src/README.patch
cp rebuild_jar/README.jsf20 facelets-taglib-jsf20/javadoc/README.jsf20.patch
cp rebuild_jar/README facelets-taglib-jsf20/javadoc/README.patch
rm facelets-taglib-jsf20/classes/patch.README
cp facelets-taglib-jsf20/src/*.patch facelets-taglib-jsf20/classes/
