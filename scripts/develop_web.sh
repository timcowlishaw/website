#!/bin/bash
set -m

function rebuild_web {
    fswatch -o -r assets/ templates/ pages/ | xargs -n1 -I{} scripts/generate_web.sh
}

scripts/generate_web.sh
python -m http.server --directory docs/ & 
rebuild_web
fg
