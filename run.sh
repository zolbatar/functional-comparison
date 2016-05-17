#!/bin/sh

# Proprietary
echo "BlitzMax"
cd Proprietary/BlitzMax/
printf "Blitzmax: " > ../../Timings/BlitzMax.txt
{ gtime -f "%E real  %U user  %S sys" ./Greedy ; } 2>> ../../Timings/BlitzMax.txt
cd ..
cd Monkey-X
echo "Monkey-X"
printf "Monkey-X: " > ../../Timings/Monkey-X.txt
{ gtime -f "%E real  %U user  %S sys" greedy.buildv85e/glfw3/xcode/build/Release/MonkeyGame.app/Contents/MacOS/MonkeyGame ; } 2>> ../../Timings/Monkey-X.txt
cd ..
cd ..

# C++
cd C++
echo "C++"
printf "     C++: " > ../Timings/C++.txt
{ gtime -f "%E real  %U user  %S sys" ./greedy ; } 2>> ../Timings/C++.txt
cd ..

# Clojure
cd Clojure
echo "Clojure"
printf " Clojure: " > ../Timings/Clojure.txt
{ gtime -f "%E real  %U user  %S sys" java -server -jar target/PerformanceComparison-1.0.0-standalone.jar ; } 2>> ../Timings/Clojure.txt
cd ..

# Python
cd Python
echo "Pythons"
printf " Python2: " > ../Timings/Python2.txt
{ gtime -f "%E real  %U user  %S sys" python2 greedy.py ; } 2>> ../Timings/Python2.txt
printf " Python3: " > ../Timings/Python3.txt
{ gtime -f "%E real  %U user  %S sys" python3 greedy.py ; } 2>> ../Timings/Python3.txt
printf "   PyPy2: " > ../Timings/PyPy2.txt
{ gtime -f "%E real  %U user  %S sys" pypy greedy.py ; } 2>> ../Timings/PyPy2.txt
printf "   PyPy3: " > ../Timings/PyPy3.txt
{ gtime -f "%E real  %U user  %S sys" pypy3 greedy.py ; } 2>> ../Timings/PyPy3.txt
cd ..

# Timings
cat Timings/BlitzMax.txt
cat Timings/Monkey-X.txt
cat Timings/C++.txt
cat Timings/Clojure.txt
cat Timings/Python2.txt
cat Timings/Python3.txt
cat Timings/PyPy2.txt
cat Timings/PyPy3.txt
