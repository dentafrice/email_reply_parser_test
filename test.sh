#!/usr/bin/env bash

TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" EXIT

echo ">> Testing html_body.txt"
cat html_body.txt | python2 test.py > "$TMPDIR/html_body_python.txt"
cat html_body.txt | go run main.go > "$TMPDIR/html_body_go.txt"
diff "$TMPDIR/html_body_go.txt" "$TMPDIR/html_body_python.txt"

echo ">> Testing text_body.txt"
cat text_body.txt | python2 test.py > "$TMPDIR/text_body_python.txt"
cat text_body.txt | go run main.go > "$TMPDIR/text_body_go.txt"
diff "$TMPDIR/text_body_go.txt" "$TMPDIR/text_body_python.txt"
