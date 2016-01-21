#!/bin/bash
export DISPLAY=:0.0
 
if [ $# -eq 0 ]; then
  echo usage: $(basename $0) "on|off"
  exit 1
fi
 
if [ $1 = "off" ]; then
  /opt/vc/bin/tvservice -p && /opt/vc/bin/tvservice -o
elif [ $1 = "on" ]; then
  /opt/vc/bin/tvservice -p && chvt 1 && chvt 7
else 
  echo usage: $(basename $0) "on|off"
fi
