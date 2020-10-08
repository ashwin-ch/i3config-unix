#!/bin/bash

IMAGE=$HOME/picture/hello.jpeg

# Take a screenshot
scrot $IMAGE

# Pixellate it 10x
mogrify -scale 10% -scale 1000% $IMAGE
convert $IMAGE -blur "2x8" $IMAGE

# Lock screen displaying this image.
i3lock -d  -c ffffff
