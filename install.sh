#!/bin/bash

# set up soundmeter
# ref: https://apple.stackexchange.com/a/270331
brew install portaudio
brew install ffmpeg
sudo pip install soundmeter


# modify files ownership
chmod 755 sh/decrSound.sh 
chmod 755 sh/incrSound.sh 
