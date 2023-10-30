#!/bin/bash
echo "Rebuilding web..."

PANDOC_SHARED_ARGS="-f markdown"

function generate_page () {
  echo "generating: $2"
  pandoc  $PANDOC_SHARED_ARGS --template "templates/web/page.html" $1 -o $2
}

rm -rf docs/
mkdir -p docs/
while IFS= read -d '' filename; do
  BASENAME=$(basename -s ".md" $filename)
  OUTPUT="docs/${BASENAME}.html"
  generate_page "${filename}" "${OUTPUT}" </dev/null
done < <(find pages -type f -iname "*.md" -print0)

cp -r ./assets docs/
cp CNAME docs/
