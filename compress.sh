#!/bin/bash
for FILE in *; do
    if [ "$FILE" == "compress.sh" ]; then
        continue
    fi
    if [ "${FILE:(-3)}" != "cbz" ]; then
        zip "-r" "${FILE}.zip" "$FILE"
        mv "$FILE.zip" "${FILE}.cbz"
        rm "-f" "-r" "$FILE"
    fi
done