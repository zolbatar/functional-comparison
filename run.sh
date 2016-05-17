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

# Go
cd Go
echo "Go"
printf "      Go: " > ../Timings/Go.txt
{ gtime -f "%E real  %U user  %S sys" ./Go ; } 2>> ../Timings/Go.txt
cd ..

# Java
cd Java
echo "Java"
printf "    Java: " > ../Timings/Java.txt
{ gtime -f "%E real  %U user  %S sys" java -server -Xms1024m -XX:+UseG1GC `basename Greedy .java` ; } 2>> ../Timings/Java.txt
cd ..

# O'caml
cd OCaml
echo "OCaml"
printf "   OCaml: " > ../Timings/OCaml.txt
{ gtime -f "%E real  %U user  %S sys" ./main ; } 2>> ../Timings/OCaml.txt
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

# Ruby
cd Ruby
echo "Ruby"
printf "    Ruby: " > ../Timings/Ruby.txt
{ gtime -f "%E real  %U user  %S sys" ruby greedy.rb ; } 2>> ../Timings/Ruby.txt
cd ..

# Rust
cd Rust
echo "Rust"
printf "    Rust: " > ../Timings/Rust.txt
{ gtime -f "%E real  %U user  %S sys" ./greedy ; } 2>> ../Timings/Rust.txt
cd ..


# Timings
cat Timings/BlitzMax.txt
cat Timings/Monkey-X.txt
cat Timings/C++.txt
cat Timings/Clojure.txt
cat Timings/Go.txt
cat Timings/Java.txt
cat Timings/Ocaml.txt
cat Timings/Python2.txt
cat Timings/Python3.txt
cat Timings/PyPy2.txt
cat Timings/PyPy3.txt
cat Timings/Ruby.txt
cat Timings/Rust.txt
