#!/bin/bash

make html
cd build/html && python3 -m http.server 8080
