#!/bin/sh
# Publish the submitted js13k build to Cloudflare (spacetime.projectz.co.nz).
set -e
cd "$(dirname "$0")"
rm -rf dist && mkdir dist
cp spacetime/build/index.min.html dist/index.html
npx --yes wrangler@4 deploy
