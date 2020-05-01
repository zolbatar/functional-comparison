#!/bin/sh
echo "     Kotlin: " > ../Timings/Kotlin.txt
kotlinc Greedy.kt -include-runtime -d greedy.jar
/usr/bin/time -v java -jar greedy.jar 2>> ../Timings/Kotlin.txt 1>> /dev/null
wc Greedy.kt >> ../Timings/Kotlin.txt
echo "5 5" >> ../Timings/Kotlin.txt

#echo "Kotlin/Nati: " > ../Timings/KotlinNative.txt
#kotlinc-native -opt GreedyNative.kt
#/usr/bin/time -v ./program.kexe 2>> ../Timings/KotlinNative.txt 1>> /dev/null
#wc GreedyNative.kt >> ../Timings/KotlinNative.txt
#echo "5 5" >> ../Timings/KotlinNative.txt
