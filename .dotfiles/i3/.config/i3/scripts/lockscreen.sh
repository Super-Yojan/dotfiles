#!/bin/bash


killall -SIGUSR1 dunst
betterlockscreen --lock blur
killall -SIGUSR2 dunst
