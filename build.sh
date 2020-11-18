#!/bin/sh

# Proprietary
#cd Proprietary/BlitzMax/
#/mnt/Data/Dropbox/Development/BlitzMax/bin/bmk makeapp -r Greedy.bmx
#cd ..
#cd Monkey-X
#~/Development/monkey2/bin/mx2cc_linux makeapp -config=release -build greedy.monkey2
#cd ..
#cd ..

# C
cd C
clang -O3 -march=native greedy.c -lm -o greedy
cd ..

# C++
cd C++
clang++ -O3 -march=native greedy.cpp -o greedy
#clang++ -O3 -march=native greedymap.cpp -o greedymap
cd ..

# C#
cd C#
cd DotNet
dotnet build --configuration Release
cd ..
cd ..

# Clojure
cd Clojure
lein uberjar
cd ..

# Common Lisp
cd CommonLisp
sbcl --script greedy.lisp
cd ..

# Crystal
cd Crystal
crystal build --release greedy.cr 
crystal build --release greedy-concurrent.cr 
cd ..

# D
cd D
dmd -O greedy.d
cd ..

# F#
cd F#
cd DotNet
dotnet build --configuration Release
cd ..
cd ..

# Fortran
cd Fortran
gfortran -Ofast greedy.f90
cd ..

# Go
cd Go
go build
cd ..
cd Go-Concurrent
go build
cd ..

# Haskell
cd Haskell
#ghc -prof -fprof-auto -rtsopts Main.hs
# cabal new-build --enable-profiling --enable-optimization=2
cabal v2-build
cd ..

# Java
cd Java
javac Greedy.java -Xdiags:verbose
javac Greedy-Concurrent.java -Xdiags:verbose

# GraalVM
echo "GraalVM"
./graal.sh
cd ..

# OCaml
cd OCaml
ocamlopt -O3 str.cmxa main.ml -o main
cd ..

# PiBasic
cd PiBasic
~/repos/personal/PiBasic/V2/pibasic greedy.bas compile
clang++ -O3 -std=c++14 output.cpp ~/repos/personal/PiBasic/V2/src/engine/*cpp ~/repos/personal/PiBasic/V2/src/graphics/*.cpp -lSDL2 -I. -I/usr/include/SDL2 -o greedy
cd ..

# Python
cd Python
python3 setup.py build_ext --inplace
cd ..

# Rust
cd Rust
cargo build --release
cd ..
cd Rust-Optimised
cargo build --release
cd ..
cd Rust-Concurrent
cargo build --release
cd ..

# Scala
cd Scala
sbt assembly
cd ..

