#!/bin/sh

/mnt/Data/Dropbox/Development/Library/graalvm-ee-java11-20.0.0/bin/javac Greedy.java -Xdiags:verbose
/mnt/Data/Dropbox/Development/Library/graalvm-ee-java11-20.0.0/bin/native-image Greedy
