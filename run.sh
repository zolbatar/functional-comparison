#!/bin/sh

rm Timings/*

# Proprietary
#echo "BlitzMax"
#cd Proprietary/BlitzMax/
#echo "Blitzmax: " > ../../Timings/BlitzMax.txt
#/usr/bin/time -v ./Greedy 2>> ../../Timings/BlitzMax.txt
#cd ..
#cd Monkey-X
#echo "Monkey-X"
#echo "Monkey-X: " > ../../Timings/Monkey-X.txt
#/usr/bin/time -v ./Greedy greedy.buildv85e/glfw3/xcode/build/Release/MonkeyGame.app/Contents/MacOS/MonkeyGame 2>> ../../Timings/Monkey-X.txt
#cd ..
#cd ..

# C#
cd C#
echo "C#"
#echo " C# Mono: " > ../Timings/C#Mono.txt
#/usr/bin/time -v mono ./Program.exe 2>> ../Timings/C#Mono.txt
cd DotNet
echo "         C#: " > ../../Timings/C#.txt
/usr/bin/time -v dotnet-sdk.dotnet run 2>> ../../Timings/C#.txt
cd ..
cd ..

# C++
cd C++
echo "C++"
echo "        C++: " > ../Timings/C++.txt
/usr/bin/time -v ./greedy 2>> ../Timings/C++.txt
#echo "     C++ (Map): " > ../Timings/C++Map.txt
#/usr/bin/time -v ./greedymap 2>> ../Timings/C++Map.txt
cd ..

# Clojure
cd Clojure
echo "Clojure"
echo "    Clojure: " > ../Timings/Clojure.txt
/usr/bin/time -v java -server -jar target/PerformanceComparison-1.0.0-standalone.jar 2>> ../Timings/Clojure.txt
cd ..

# Crystal
cd Crystal
echo "Crystal"
echo "    Crystal: " > ../Timings/Crystal.txt
/usr/bin/time -v ./greedy 2>> ../Timings/Crystal.txt
cd ..

# D
cd D
echo "D"
echo "          D: " > ../Timings/D.txt
/usr/bin/time -v ./greedy 2>> ../Timings/D.txt
cd ..

# F#
cd F#
cd DotNet
echo "F#"
echo "         F#: " > ../../Timings/F#.txt
/usr/bin/time -v dotnet-sdk.dotnet run 2>> ../../Timings/F#.txt
cd ..
cd ..

# Go
cd Go
echo "Go"
echo "         Go: " > ../Timings/Go.txt
/usr/bin/time -v ./Go 2>> ../Timings/Go.txt
cd ..
cd Go-Concurrent
echo "Go (Concurrent)"
echo "        Go*: " > ../Timings/GoConcurrent.txt
/usr/bin/time -v ./Go-Concurrent 2>> ../Timings/GoConcurrent.txt
cd ..

# Haskell
cd Haskell
echo "Haskell"
echo "    Haskell: " > ../Timings/Haskell.txt
/usr/bin/time -v dist/build/GreedyPerformance/GreedyPerformance 2>> ../Timings/Haskell.txt
cd ..

# Java
cd Java
echo "Java"
echo "       Java: " > ../Timings/Java.txt
/usr/bin/time -v java -server `basename Greedy .java` 2>> ../Timings/Java.txt
echo "Java (Concurrent)"
echo "      Java*: " > ../Timings/JavaConcurrent.txt
/usr/bin/time -v java -server `basename GreedyConcurrent .java` 2>> ../Timings/JavaConcurrent.txt
cd ..

# NodeJS
cd NodeJS
echo "NodeJS"
echo "     NodeJS: " > ../Timings/NodeJS.txt
/usr/bin/time -v node greedy.js 2>> ../Timings/NodeJS.txt
echo "NodeJS (Concurrent)"
echo "    NodeJS*: " > ../Timings/NodeJS-Concurrent.txt
/usr/bin/time -v node greedy-concurrent.js 2>> ../Timings/NodeJS-Concurrent.txt
cd ..

# Julia
cd Julia
echo "Julia"
echo "      Julia: " > ../Timings/Julia.txt
/usr/bin/time -v julia --optimize=3 greedy.jl 2>> ../Timings/Julia.txt
cd ..

# O'caml
cd OCaml
echo "OCaml"
echo "     O'Caml: " > ../Timings/OCaml.txt
/usr/bin/time -v ./main 2>> ../Timings/OCaml.txt
cd ..

# Python
cd Python
echo "Pythons"
echo "    Python2: " > ../Timings/Python2.txt
/usr/bin/time -v python2 greedy.py 2>> ../Timings/Python2.txt
echo "    Python3: " > ../Timings/Python3.txt
/usr/bin/time -v python3 greedy.py 2>> ../Timings/Python3.txt
echo "      PyPy2: " > ../Timings/PyPy2.txt
/usr/bin/time -v pypy greedy.py 2>> ../Timings/PyPy2.txt
echo "      PyPy3: " > ../Timings/PyPy3.txt
/usr/bin/time -v pypy3 greedy.py 2>> ../Timings/PyPy3.txt
cd ..

# Ruby
cd Ruby
echo "Ruby"
echo "       Ruby: " > ../Timings/Ruby.txt
rvm use ruby
/usr/bin/time -v ruby greedy.rb 2>> ../Timings/Ruby.txt
echo "TruffleRuby: " > ../Timings/TruffleRuby.txt
rvm use truffleruby
/usr/bin/time -v ruby greedy.rb 2>> ../Timings/TruffleRuby.txt 
cd ..
echo "JRuby: " > ../Timings/JRuby.txt
rvm use jruby
/usr/bin/time -v ruby greedy.rb 2>> ../Timings/JRuby.txt 
cd ..


# Rust
cd Rust/target/release
echo "Rust"
echo "       Rust: " > ../../../Timings/Rust.txt
/usr/bin/time -v ./rust 2>> ../../../Timings/Rust.txt
cd ../../..
cd Rust-Concurrent/target/release
echo "Rust (Concurrent)"
echo "      Rust*: " > ../../../Timings/RustConcurrent.txt
/usr/bin/time -v ./rust 2>> ../../../Timings/RustConcurrent.txt
cd ../../..

# Scala
cd Scala
echo "Scala"
echo "      Scala: " > ../Timings/Scala.txt
/usr/bin/time -v java -server -jar target/scala-2.10/scala_2.10-0.1-SNAPSHOT-one-jar.jar 2>> ../Timings/Scala.txt
cd ..
