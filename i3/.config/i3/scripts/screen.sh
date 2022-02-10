#!/bin/bash

autorandr -c

$HOME/.config/polybar/launch.sh

#nitrogen --restore
$HOME/.fehbg
rclone --vfs-cache-mode writes mount "OneDrive":  ~/OneDrive &
pkill conky
conky &
