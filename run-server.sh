#!/bin/bash

cd "$(dirname "$0")"

echo "Training page available at http://127.0.0.1:8000"

python3 -m http.server 8000 --bind 127.0.0.1
