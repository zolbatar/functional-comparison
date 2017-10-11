@echo off
cd Proprietary/BlitzMax/
del /q Greedy.exe
del /q .bmx
cd ..
cd Monkey-X
del /s /q greedy.buildv85e
cd ..
cd ..
cd C#
del /s /q bin
del /s /q obj
cd ..
cd C++
del /q greedy.exe
cd ..
cd Clojure
del /s /q target
cd ..
cd D
del /q greedy.exe
del /q greedy.obj
cd ..
cd Go
del /q Greedy.exe
cd ..
cd Haskell
del /s /q dist
cd ..
cd Java
del /q *.class
cd ..
cd OCaml
del main
del main.o
del main.cmi
del main.cmx
cd ..
cd Rust
del greedy
cd ..
cd Scala
del /s /q target
cd ..
