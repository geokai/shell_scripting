
import os

d = '/etc/'

for f in os.listdir(d):
    if os.path.isfile(d + f):
        print(f)
