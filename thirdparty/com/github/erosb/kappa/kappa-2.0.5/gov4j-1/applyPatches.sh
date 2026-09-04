#!/usr/bin/env bash
# Applica in sequenza tutte le patch presenti in patch_src/ al sorgente kappa-2.0.5/.
# Le patch vengono ordinate alfabeticamente (i prefissi numerici a 3 cifre garantiscono
# l'ordine atteso: 001, 002, ..., 010, ...).
#
# Preparazione (una tantum):
#   git clone https://github.com/erosb/kappa.git kappa-2.0.5
#   cd kappa-2.0.5 && git checkout v2.0.5 && cd ..
#
# Uso:
#   ./applyPatches.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
KAPPA_DIR="${SCRIPT_DIR}/kappa-2.0.5"
PATCH_DIR="${SCRIPT_DIR}/patch_src"

if [ ! -d "$KAPPA_DIR" ]; then
  echo "ERROR: directory $KAPPA_DIR non trovata." >&2
  echo "       Eseguire prima:" >&2
  echo "         git clone https://github.com/erosb/kappa.git kappa-2.0.5" >&2
  echo "         cd kappa-2.0.5 && git checkout v2.0.5 && cd .." >&2
  exit 1
fi

if [ ! -d "$PATCH_DIR" ]; then
  echo "ERROR: directory $PATCH_DIR non trovata." >&2
  exit 1
fi

shopt -s nullglob
patches=( "$PATCH_DIR"/*.patch )
shopt -u nullglob

if [ ${#patches[@]} -eq 0 ]; then
  echo "ERROR: nessuna patch trovata in $PATCH_DIR" >&2
  exit 1
fi

cd "$KAPPA_DIR"

for patch_file in "${patches[@]}"; do
  echo "==> applico $(basename "$patch_file")"
  patch -p0 < "$patch_file"
done

echo "==> tutte le patch applicate (${#patches[@]} file)"
