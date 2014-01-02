#!/bin/bash

for file in ~/Downloads/rips/*.flv
do
    ffmpeg -i "$file" -c:v libx264 -crf 23 -profile:v high -r 30 -c:a libfaac -q:a 100 -ar 48000 "$file.mp4"
done