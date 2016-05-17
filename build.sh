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

# D
cd D
dmd -O greedy.d
cd ..

# Go
cd Go
go build
cd ..

# Java
cd Java
javac Greedy.java -Xdiags:verbose
cd ..

# OCaml
cd OCaml
ocamlopt str.cmxa main.ml -o main
cd ..

# Rust
cd Rust
rustc -C opt-level=3 -C target-cpu=native greedy.rs
cd ..

# Scala
cd Scala
sbt one-jar
cd ..
