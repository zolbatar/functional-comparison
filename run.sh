#!/bin/sh

# Proprietary
echo "BlitzMax"
cd Proprietary/BlitzMax/
time ./Greedy > ../../Timings/BlitzMax.txt
printf "Blitzmax: " > ../../Timings/BlitzMax.txt
cd ..
cd Monkey-X
echo "Monkey-X"
time ./Greedy greedy.buildv85e/glfw3/xcode/build/Release/MonkeyGame.app/Contents/MacOS/MonkeyGame > ../../Timings/Monkey-X.txt
printf "Monkey-X: " > ../../Timings/Monkey-X.txt
cd ..
cd ..

# C#
cd C#
echo "C#"
time mono ./Program.exe > ../Timings/C#Mono.txt
cd DotNet
time dotnet run > ../../Timings/C#.txt
cd ..
printf " C# Mono: " > ../Timings/C#Mono.txt
printf "      C#: " > ../Timings/C#.txt
cd ..

# C++
cd C++
echo "C++"
{ gtime -f "%E real  %U user  %S sys %M set size" ./greedy ; } 2>> ../Timings/C++.txt
printf "     C++: " > ../Timings/C++.txt
cd ..

# Clojure
cd Clojure
echo "Clojure"
{ gtime -f "%E real  %U user  %S sys %M set size" java -server -jar target/PerformanceComparison-1.0.0-standalone.jar ; } 2>> ../Timings/Clojure.txt
printf " Clojure: " > ../Timings/Clojure.txt
cd ..

# D
cd D
echo "D"
printf "       D: " > ../Timings/D.txt
{ gtime -f "%E real  %U user  %S sys %M set size" ./greedy ; } 2>> ../Timings/D.txt
cd ..

# F#
cd F#
echo "F#"
printf "      F#: " > ../Timings/F#.txt
{ gtime -f "%E real  %U user  %S sys %M set size" mono -O=all bin/Release/GreedyPerformance.exe ; } 2>> ../Timings/F#.txt
cd ..

# Go
cd Go
echo "Go"
printf "      Go: " > ../Timings/Go.txt
{ gtime -f "%E real  %U user  %S sys %M set size" ./Go ; } 2>> ../Timings/Go.txt
cd ..

# Haskell
cd Haskell
echo "Haskell"
printf " Haskell: " > ../Timings/Haskell.txt
{ gtime -f "%E real  %U user  %S sys %M set size" dist/build/GreedyPerformance/GreedyPerformance ; } 2>> ../Timings/Haskell.txt
cd ..

# Java
cd Java
echo "Java"
printf "    Java: " > ../Timings/Java.txt
{ gtime -f "%E real  %U user  %S sys %M set size" java -server -Xms1024m -XX:+UseG1GC `basename Greedy .java` ; } 2>> ../Timings/Java.txt
cd ..

# O'caml
cd OCaml
echo "OCaml"
printf "   OCaml: " > ../Timings/OCaml.txt
{ gtime -f "%E real  %U user  %S sys %M set size" ./main ; } 2>> ../Timings/OCaml.txt
cd ..

# Python
cd Python
echo "Pythons"
printf " Python2: " > ../Timings/Python2.txt
{ gtime -f "%E real  %U user  %S sys %M set size" python2 greedy.py ; } 2>> ../Timings/Python2.txt
printf " Python3: " > ../Timings/Python3.txt
{ gtime -f "%E real  %U user  %S sys %M set size" python3 greedy.py ; } 2>> ../Timings/Python3.txt
printf "   PyPy2: " > ../Timings/PyPy2.txt
{ gtime -f "%E real  %U user  %S sys %M set size" pypy greedy.py ; } 2>> ../Timings/PyPy2.txt
printf "   PyPy3: " > ../Timings/PyPy3.txt
{ gtime -f "%E real  %U user  %S sys %M set size" pypy3 greedy.py ; } 2>> ../Timings/PyPy3.txt
cd ..

# Ruby
cd Ruby
echo "Ruby"
printf "    Ruby: " > ../Timings/Ruby.txt
{ gtime -f "%E real  %U user  %S sys %M set size" ruby greedy.rb ; } 2>> ../Timings/Ruby.txt
cd ..

# Rust
cd Rust
echo "Rust"
printf "    Rust: " > ../Timings/Rust.txt
{ gtime -f "%E real  %U user  %S sys %M set size" ./greedy ; } 2>> ../Timings/Rust.txt
cd ..

# Scala
cd Scala
echo "Scala"
printf "   Scala: " > ../Timings/Scala.txt
{ gtime -f "%E real  %U user  %S sys %M set size" java -server -Xms1024m -XX:+UseG1GC -jar target/scala-2.10/scala_2.10-0.1-SNAPSHOT-one-jar.jar  ; } 2>> ../Timings/Scala.txt
cd ..


# Timings
cat Timings/BlitzMax.txt
cat Timings/Monkey-X.txt
cat Timings/C#Mono.txt
cat Timings/C#.txt
cat Timings/C++.txt
cat Timings/Clojure.txt
cat Timings/D.txt
cat Timings/F#.txt
cat Timings/Go.txt
cat Timings/Haskell.txt
cat Timings/Java.txt
cat Timings/Ocaml.txt
cat Timings/Python2.txt
cat Timings/Python3.txt
cat Timings/PyPy2.txt
cat Timings/PyPy3.txt
cat Timings/Ruby.txt
cat Timings/Rust.txt
cat Timings/Scala.txt
