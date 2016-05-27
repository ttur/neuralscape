# neuralscape

Automated system for taking (preferably landscape) pics and applying a neural algorithm of artistic style on them.

My implementation uses a raspberry pi 3 and a logitech webcam, but any picture source will do.

See: 

https://gist.github.com/ttur/63490729532ceb81bee7
http://spiceprogram.org/artcorn/
https://github.com/jcjohnson/neural-style

## logical architecture

Scripts module 1: automatically takes pictures and transfers them to an AWS G2 instance

Scripts module 2: automatically applies neural-style implementation on the taken pics and selects a random style image

Scripts module 3: automatically fetches neural-styled pics and embeds them into a simpel html page which is served out through cgi-bin, because shit be real

## tech

Python, bash, perl, html, and lua.

## installation

Instructions coming soon-like


