#!/bin/sh

# Proprietary
cd Proprietary/BlitzMax/
bmk makeapp -r Greedy.bmx
printf "Blitzmax: " > ../../Timings/BlitzMax.txt
{ gtime -f "%E real  %U user  %S sys" ./Greedy ; } 2>> ../../Timings/BlitzMax.txt
rm Greedy
cd ..
cd Monkey-X
transcc_macos -target="Desktop_Game_(Glfw3)" -config=Release +CPP_DOUBLE_PRECISION_FLOATS=1 -build greedy.monkey
printf "Monkey-X: " > ../../Timings/Monkey-X.txt
{ gtime -f "%E real  %U user  %S sys" greedy.buildv85e/glfw3/xcode/build/Release/MonkeyGame.app/Contents/MacOS/MonkeyGame ; } 2>> ../../Timings/Monkey-X.txt
rm -rf greedy.buildv85e
cd ..
cd ..

# C++
cd C++
#clang++ -I /usr/local/include -L /usr/local/lib -O3 greedy.cpp -o greedy
clang++ -O3 greedy.cpp -o greedy
printf "     C++: " > ../Timings/C++.txt
{ gtime -f "%E real  %U user  %S sys" ./greedy ; } 2>> ../Timings/C++.txt
rm greedy

# Timings
cd ..
cat Timings/BlitzMax.txt
cat Timings/Monkey-X.txt
cat Timings/C++.txt
