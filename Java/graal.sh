#!/bin/sh
~/Development/Java/graalvm-ee-java11-19.3.0/bin/javac Greedy.java -Xdiags:verbose
~/Development/Java/graalvm-ee-java11-19.3.0/bin/native-image Greedy
