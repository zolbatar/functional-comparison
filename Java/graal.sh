#!/bin/sh

/home/daryl/graalvm/graalvm-ce-java11-20.2.0/bin/javac Greedy.java -Xdiags:verbose
/home/daryl/graalvm/graalvm-ce-java11-20.2.0/bin/native-image Greedy
