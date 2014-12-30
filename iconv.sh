#!/bin/sh
for FILE in *.xml
do
  echo "$FILE"
  cp "$FILE" "${FILE}.bak"
  iconv -f iso-8859-1 -t utf-8 "${FILE}.bak" > "$FILE"   
  perl -pi.pbak -e 's{xml version="1.0" encoding="ISO-8859-1"}{xml version="1.0" encoding="UTF-8"}' "$FILE"
done
