#!/bin/bash

for file in ~/Downloads/rips/*.mp4
do
    ffmpeg -i "$file" -acodec pcm_s16le -vn -ac 2 "$file.wav"
done
