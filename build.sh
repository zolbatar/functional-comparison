#!/bin/sh

# Proprietary
cd Proprietary/BlitzMax/
bmk makeapp -r Greedy.bmx
cd ..
cd Monkey-X
transcc_macos -target="Desktop_Game_(Glfw3)" -config=Release +CPP_DOUBLE_PRECISION_FLOATS=1 -build greedy.monkey
cd ..
cd ..

# C++
cd C++
clang++ -O3 greedy.cpp -o greedy
cd ..

# Clojure
cd Clojure
lein uberjar
cd ..