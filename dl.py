import subprocess

f = open('clips.txt')
for line in f:
    subprocess.call(['youtube-dl', line])
subprocess.call(['./convert.sh'])
subprocess.call(['./rip_audio.sh'])