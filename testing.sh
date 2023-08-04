#!/bin/bash

if [ "$1" == "--version" ]; then
  echo "myscript version 1.0.0"
  curl http://192.168.0.50/test.txt -o t.txt
else
  echo "Hello from myscript! This is version 1.0.0"
  # Add your script's main functionality here
fi

echo "running as a normal command"

