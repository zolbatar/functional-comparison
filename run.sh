#!/bin/bash
source ~/.rvm/scripts/rvm

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

# C
cd C
echo "C"
echo "          C: " > ../Timings/C.txt
/usr/bin/time -v ./greedy 2>> ../Timings/C.txt 1>> /dev/null
wc *.c >> ../Timings/C.txt
echo "1 1" >> ../Timings/C.txt
cd ..

# C#
cd C#
echo "C#"
#echo " C# Mono: " > ../Timings/C#Mono.txt
#/usr/bin/time -v mono ./Program.exe 2>> ../Timings/C#Mono.txt
cd DotNet
echo "         C#: " > ../../Timings/C#.txt
/usr/bin/time -v dotnet-sdk.dotnet bin/Release/netcoreapp3.0/DotNet.dll 2>> ../../Timings/C#.txt 1>> /dev/null
wc *.cs >> ../../Timings/C#.txt
echo "5 5" >> ../../Timings/C#.txt
cd ..
cd ..

# C++
cd C++
echo "C++"
echo "        C++: " > ../Timings/C++.txt
/usr/bin/time -v ./greedy 2>> ../Timings/C++.txt 1>> /dev/null
wc greedy.cpp >> ../Timings/C++.txt
echo "2 2" >> ../Timings/C++.txt
#echo "  C++ (Map): " > ../Timings/C++Map.txt
#/usr/bin/time -v ./greedymap 2>> ../Timings/C++Map.txt
cd ..

# Clojure
cd Clojure
echo "Clojure"
echo "    Clojure: " > ../Timings/Clojure.txt
/usr/bin/time -v java -server -Xmx128m -jar target/PerformanceComparison-1.0.0-standalone.jar 2>> ../Timings/Clojure.txt 1>> /dev/null
wc src/PerformanceComparison/*.clj >> ../Timings/Clojure.txt
echo "3 2" >> ../Timings/Clojure.txt
cd ..

# Common Lisp
cd CommonLisp
echo "Common Lisp"
echo "Common Lisp: " > ../Timings/CommonLisp.txt
/usr/bin/time -v sbcl --core greedy.bin 2>> ../Timings/CommonLisp.txt 1>> /dev/null
wc greedy.lisp >> ../Timings/CommonLisp.txt
echo "3 3" >> ../Timings/CommonLisp.txt
cd ..

# Crystal
cd Crystal
echo "Crystal"
echo "    Crystal: " > ../Timings/Crystal.txt
/usr/bin/time -v ./greedy 2>> ../Timings/Crystal.txt 1>> /dev/null
wc ./greedy.cr >> ../Timings/Crystal.txt
echo "2 3" >> ../Timings/Crystal.txt
echo "   Crystal*: " > ../Timings/CrystalConcurrent.txt
/usr/bin/time -v ./greedy-concurrent 2>> ../Timings/CrystalConcurrent.txt 1>> /dev/null
wc ./greedy-concurrent.cr >> ../Timings/CrystalConcurrent.txt
echo "2 3" >> ../Timings/CrystalConcurrent.txt
cd ..

# D
cd D
echo "D"
echo "          D: " > ../Timings/D.txt
/usr/bin/time -v ./greedy 2>> ../Timings/D.txt 1>> /dev/null
wc greedy.d >> ../Timings/D.txt
echo "3 4" >> ../Timings/D.txt
cd ..

# F#
cd F#
cd DotNet
echo "F#"
echo "         F#: " > ../../Timings/F#.txt
/usr/bin/time -v dotnet-sdk.dotnet bin/Release/netcoreapp3.0/DotNet.dll 2>> ../../Timings/F#.txt 1>> /dev/null
wc *.fs >> ../../Timings/F#.txt
echo "4 4" >> ../../Timings/F#.txt
cd ..
cd ..

# Go
cd Go
echo "Go"
echo "         Go: " > ../Timings/Go.txt
/usr/bin/time -v ./Go 2>> ../Timings/Go.txt 1>> /dev/null
wc *.go >> ../Timings/Go.txt
echo "5 4" >> ../Timings/Go.txt
cd ..
cd Go-Concurrent
echo "Go (Concurrent)"
echo "        Go*: " > ../Timings/GoConcurrent.txt
/usr/bin/time -v ./Go-Concurrent 2>> ../Timings/GoConcurrent.txt 1>> /dev/null
wc *.go >> ../Timings/GoConcurrent.txt
echo "5 4" >> ../Timings/GoConcurrent.txt
cd ..

# Haskell
cd Haskell
echo "Haskell"
echo "    Haskell: " > ../Timings/Haskell.txt
/usr/bin/time -v dist/build/GreedyPerformance/GreedyPerformance 2>> ../Timings/Haskell.txt 1>> /dev/null
wc Main.hs >> ../Timings/Haskell.txt
echo "5 1" >> ../Timings/Haskell.txt
cd ..

# Java
cd Java
echo "Java"
echo "       Java: " > ../Timings/Java.txt
/usr/bin/time -v java -server `basename Greedy .java` 2>> ../Timings/Java.txt 1>> /dev/null
wc Greedy.java >> ../Timings/Java.txt
echo "5 5" >> ../Timings/Java.txt

echo "Java (Concurrent)"
echo "      Java*: " > ../Timings/JavaConcurrent.txt
/usr/bin/time -v java -server `basename GreedyConcurrent .java` 2>> ../Timings/JavaConcurrent.txt 1>> /dev/null
wc Greedy-Concurrent.java >> ../Timings/JavaConcurrent.txt
echo "5 5" >> ../Timings/JavaConcurrent.txt
cd ..

# Julia
cd Julia
echo "Julia"
echo "      Julia: " > ../Timings/Julia.txt
/usr/bin/time -v julia --optimize=3 --inline=yes --math-mode=fast greedy.jl 2>> ../Timings/Julia.txt 1>> /dev/null
wc *.jl >> ../Timings/Julia.txt
echo "3 4" >> ../Timings/Julia.txt
cd ..

# NodeJS
cd NodeJS
echo "NodeJS"
echo "     NodeJS: " > ../Timings/NodeJS.txt
/usr/bin/time -v node greedy.js 2>> ../Timings/NodeJS.txt 1>> /dev/null
wc greedy.js >> ../Timings/NodeJS.txt
echo "4 5" >> ../Timings/NodeJS.txt
echo "NodeJS (Concurrent)"
echo "    NodeJS*: " > ../Timings/NodeJS-Concurrent.txt
/usr/bin/time -v node greedy-concurrent.js 2>> ../Timings/NodeJS-Concurrent.txt 1>> /dev/null
wc greedy-concurrent.js >> ../Timings/NodeJS-Concurrent.txt
echo "4 5" >> ../Timings/NodeJS-Concurrent.txt
cd ..

# O'caml
cd OCaml
echo "OCaml"
echo "     O'Caml: " > ../Timings/OCaml.txt
/usr/bin/time -v ./main 2>> ../Timings/OCaml.txt 1>> /dev/null
wc *.ml >> ../Timings/OCaml.txt
echo "3 3" >> ../Timings/OCaml.txt
cd ..

# Python
cd Python
echo "Pythons"
echo "    Python2: " > ../Timings/Python2.txt
/usr/bin/time -v python2 greedy.py 2>> ../Timings/Python2.txt 1>> /dev/null
wc greedy.py >> ../Timings/Python2.txt
echo "4 5" >> ../Timings/Python2.txt
echo "    Python3: " > ../Timings/Python3.txt
/usr/bin/time -v python3 greedy.py 2>> ../Timings/Python3.txt 1>> /dev/null
wc greedy.py >> ../Timings/Python3.txt
echo "4 5" >> ../Timings/Python3.txt
echo "      PyPy2: " > ../Timings/PyPy2.txt
/usr/bin/time -v pypy greedy.py 2>> ../Timings/PyPy2.txt 1>> /dev/null
wc greedy.py >> ../Timings/PyPy2.txt
echo "4 5" >> ../Timings/PyPy2.txt
echo "      PyPy3: " > ../Timings/PyPy3.txt
/usr/bin/time -v pypy3 greedy.py 2>> ../Timings/PyPy3.txt 1>> /dev/null
wc greedy.py >> ../Timings/PyPy3.txt
echo "4 5" >> ../Timings/PyPy3.txt
echo "   Python3*: " > ../Timings/Python3Concurrent.txt
/usr/bin/time -v python3 greedy-concurrent.py 2>> ../Timings/Python3Concurrent.txt 1>> /dev/null
wc greedy-concurrent.py >> ../Timings/Python3Concurrent.txt
echo "4 5" >> ../Timings/Python3Concurrent.txt
echo "     PyPy3*: " > ../Timings/PyPy3Concurrent.txt
/usr/bin/time -v pypy3 greedy-concurrent.py 2>> ../Timings/PyPy3Concurrent.txt 1>> /dev/null
wc greedy-concurrent.py >> ../Timings/PyPy3Concurrent.txt
echo "4 5" >> ../Timings/PyPy3Concurrent.txt
echo "     Cython: " > ../Timings/Cython.txt
/usr/bin/time -v python greedyCython.py 2>> ../Timings/Cython.txt 1>> /dev/null
wc greedyCythonLib.pyx >> ../Timings/Cython.txt
echo "5 5" >> ../Timings/Cython.txt
cd ..

# Ruby
cd Ruby
echo "Ruby"
echo "       Ruby: " > ../Timings/Ruby.txt
rvm use ruby
/usr/bin/time -v ruby greedy.rb 2>> ../Timings/Ruby.txt 1>> /dev/null
wc *.rb >> ../Timings/Ruby.txt
echo "3 4" >> ../Timings/Ruby.txt
echo "TruffleRuby: " > ../Timings/TruffleRuby.txt
rvm use truffleruby
/usr/bin/time -v ruby greedy.rb 2>> ../Timings/TruffleRuby.txt  1>> /dev/null
wc *.rb >> ../Timings/TruffleRuby.txt
echo "3 4" >> ../Timings/TruffleRuby.txt
echo "      JRuby: " > ../Timings/JRuby.txt
rvm use jruby
/usr/bin/time -v  jruby -J-Xmx128m greedy.rb 2>> ../Timings/JRuby.txt  1>> /dev/null
wc *.rb >> ../Timings/JRuby.txt
echo "4 4" >> ../Timings/JRuby.txt
cd ..

# Rust
cd Rust/target/release
echo "Rust"
echo "       Rust: " > ../../../Timings/Rust.txt
/usr/bin/time -v ./rust 2>> ../../../Timings/Rust.txt 1>> /dev/null
wc ../../src/main.rs >> ../../../Timings/Rust.txt
echo "5 2" >> ../../../Timings/Rust.txt
cd ../../..
cd Rust-Concurrent/target/release
echo "Rust (Concurrent)"
echo "      Rust*: " > ../../../Timings/RustConcurrent.txt
/usr/bin/time -v ./rust 2>> ../../../Timings/RustConcurrent.txt 1>> /dev/null
wc ../../src/*.rs >> ../../../Timings/RustConcurrent.txt
echo "5 2" >> ../../../Timings/RustConcurrent.txt
cd ../../..

# Scala
cd Scala
echo "Scala"
echo "      Scala: " > ../Timings/Scala.txt
/usr/bin/time -v java -server -jar target/scala-2.12/scala-assembly-0.1.0-SNAPSHOT.jar 2>> ../Timings/Scala.txt 1>> /dev/null
wc src/main/scala/*.scala >> ../Timings/Scala.txt
echo "5 4" >> ../Timings/Scala.txt
cd ..

# Fortran
cd Fortran
echo "Fortran"
echo "    Fortran: " > ../Timings/Fortran.txt
/usr/bin/time -v ./a.out 2>> ../Timings/Fortran.txt 1>> /dev/null
wc *.f90 >> ../Timings/Fortran.txt
echo "3 4" >> ../Timings/Fortran.txt
cd ..

# GraalVM
cd Java
echo "GraalVM"
./graal.sh
cd ..

# Kotlin
cd Kotlin
echo "Kotlin"
./kotlin.sh
cd ..
