#!/bin/bash

autorandr -c

/home/yojan/.config/polybar/launch.sh

nitrogen --restore

pkill conky
conky &
