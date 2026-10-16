#!/bin/bash
# Downloads one variant (full or lite) of the HoshimiLocalify-en module APK from a specific release.
set -euo pipefail

: "${VARIANT:?VARIANT must be set to full or lite}"
: "${MODULE_TAG:?MODULE_TAG must be set to a HoshimiLocalify-en release tag}"
MODULE_REPO="${MODULE_REPO:-tokanada/HoshimiLocalify-en}"

case "$VARIANT" in
  full|lite) ;;
  *) echo "Unknown VARIANT: $VARIANT" >&2; exit 1 ;;
esac

rm -f HoshimiLocalify-en-*.apk
gh release download "$MODULE_TAG" --repo "$MODULE_REPO" --pattern "HoshimiLocalify-en-${VARIANT}-*.apk" --dir .

shopt -s nullglob
found=(HoshimiLocalify-en-"${VARIANT}"-*.apk)
if [ "${#found[@]}" -ne 1 ]; then
  echo "Expected exactly 1 ${VARIANT} module APK in release $MODULE_TAG, found ${#found[@]}" >&2
  exit 1
fi

LOCALIFY_KR_NAME="${found[0]}"
echo "Using module: $LOCALIFY_KR_NAME"
echo "LOCALIFY_KR_NAME=$LOCALIFY_KR_NAME" >> "$GITHUB_ENV"
