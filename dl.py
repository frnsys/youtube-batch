import subprocess, os
path = os.path.dirname(os.path.realpath(__file__))
join = os.path.join
save_path = os.path.expanduser('~/Downloads/rips')

if not os.path.exists(save_path):
    os.makedirs(save_path)

f = open(join(path, 'clips.txt'))
for line in f:
    subprocess.call(['youtube-dl', line, '-o', join(save_path, '%(title)s-%(id)s.%(ext)s')])
subprocess.call([join(path, 'convert.sh')])
subprocess.call([join(path, 'rip_audio.sh')])