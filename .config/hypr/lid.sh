#!/bin/bash

LID=$(awk '{print $2}' /proc/acpi/button/lid/LID0/state)
echo "Lid state: $LID"

if [ "$LID" = "closed" ]; then
  echo "Disabling eDP-1, enabling HDMI"
  hyprctl keyword monitor "eDP-1,disable"
  hyprctl keyword monitor "HDMI-A-1,1920x1080@60,0x0,1"
else
  echo "Enabling eDP-1 and HDMI"
  hyprctl keyword monitor "HDMI-A-1,1920x1080@60,0x0,1"
  hyprctl keyword monitor "eDP-1,1920x1080@60,1920x0,1.2"
fi
