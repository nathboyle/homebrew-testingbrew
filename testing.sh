#!/bin/bash

echo "Hello from myscript! This is version 1.0.0"
echo "trying to curl"
curl http://192.168.0.50/test.txt -o t.txt
