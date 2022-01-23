#!/bin/sh

UNIT="docker.service"
ICON_ACTIVE="ON"
ICON_INACTIVE="OFF"

while getopts 'u:y:n:' flag; do
  case "${flag}" in
  u) UNIT="${OPTARG}" ;;
  y) ICON_ACTIVE="${OPTARG}" ;;
  n) ICON_INACTIVE="${OPTARG}" ;;
  esac
done

journalctl --follow -o cat --unit $UNIT | while read -r; do
  if [ "$(systemctl is-active "$UNIT")" = "active" ]; then
    echo "$ICON_ACTIVE"
  else
    echo "$ICON_INACTIVE"
  fi
done
