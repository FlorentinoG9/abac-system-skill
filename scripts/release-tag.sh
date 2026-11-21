#!/usr/bin/env bash
set -euo pipefail

VERSION=$(bun -e "console.log(require('./package.json').version)")
TAG="v${VERSION}"

if git rev-parse "$TAG" >/dev/null 2>&1; then
  echo "Tag $TAG already exists locally"
else
  git tag -a "$TAG" -m "abac-system skill $TAG"
fi

git push origin "$TAG"

if gh release view "$TAG" >/dev/null 2>&1; then
  echo "Release $TAG already exists"
else
  gh release create "$TAG" --title "$TAG" --generate-notes
fi
