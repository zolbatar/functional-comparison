#!/bin/sh
~/Development/graalvm-ee-java11-19.3.0/bin/javac Greedy.java -Xdiags:verbose
~/Development/graalvm-ee-java11-19.3.0/bin/native-image Greedy
echo "Native Java: " > ../Timings/JavaGraal.txt
/usr/bin/time -v ./greedy 2>> ../Timings/JavaGraal.txt 1>> /dev/null
wc Greedy.java >> ../Timings/JavaGraal.txt
echo "5 5" >> ../Timings/JavaGraal.txt
