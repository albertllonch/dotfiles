#!/bin/bash

LID=$(awk '{print $2}' /proc/acpi/button/lid/LID0/state)

if [ "$LID" = "closed"]; then
  
monitor=HDMI-A-1,1920x1080@60,0x0,1
  hyprctl keyword monitor "eDP-1,disable"
  hyprctl keyword monitor "HDMI-A-1,preferred,auto,1"
else
  hyprctl keyword monitor "HDMI-A-1,1920x1080@60,0x0,1"
  hyprctl keyword monitor "eDP-1,1920x1080@60,1920x0,1.2"
