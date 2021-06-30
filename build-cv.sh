#!/bin/zsh

docker run --rm -it -v "$PWD":/data latex bash -c 'source ~/.bashrc && cd latex-cv && lualatex cv.tex'
