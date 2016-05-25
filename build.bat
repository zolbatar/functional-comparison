rem @echo off

rem setup MSBUILD
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\VsMSBuildCmd.bat"

rem Proprietary
cd Proprietary/BlitzMax/
C:\BlitzMax\bin\bmk makeapp -r Greedy.bmx
cd ..
cd Monkey-X
C:\MonkeyXFree84f\bin\transcc_winnt -target="Desktop_Game_(Glfw3)" -config=Release +CPP_DOUBLE_PRECISION_FLOATS=1 -build greedy.monkey
cd ..
cd ..

rem C#
cd C#
dotnet restore
dotnet build --configuration Release
cd ..

rem C++
cd C++
g++ -O3 greedy.cpp -o greedy
cd ..

rem Clojure
cd Clojure
call lein uberjar
cd ..

rem D
cd D
dmd -O greedy.d
cd ..
echo ".."

rem F#
cd F#
msbuild /p:Configuration=Release GreedyPerformance.sln
cd ..

rem Go
cd Go
go build greedy.go
cd ..

rem Haskell
cd Haskell
cabal build
cd ..

rem Java
cd Java
javac Greedy.java -Xdiags:verbose
cd ..

rem OCaml
cd OCaml
ocamlopt str.cmxa main.ml -o main
cd ..

rem Rust
cd Rust
rustc -C opt-level=3 -C target-cpu=native greedy.rs
cd ..

rem Scala
cd Scala
sbt one-jar
cd ..
