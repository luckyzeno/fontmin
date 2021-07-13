#!/bin/bash
urls[0]='localhost/contact'
urls[1]='localhost/contact/result'
text=""
for url in ${urls[@]}
do
    text="$text"`curl "$url" | html-to-text`
done

fontmin -t "$text" "$1"
