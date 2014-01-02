#!/bin/bash

for file in ~/Downloads/ripped/*.mp4
do
    ffmpeg -i "$file" -acodec pcm_s16le -vn -ac 2 "$file.wav"
done
