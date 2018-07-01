#!/bin/sh
echo " Python2: " > ../Timings/Python2.txt
/usr/bin/time -v python2 greedy.py 2>> ../Timings/Python2.txt
echo " Python3: " > ../Timings/Python3.txt
/usr/bin/time -v python3 greedy.py 2>> ../Timings/Python3.txt
echo "   PyPy2: " > ../Timings/PyPy2.txt
/usr/bin/time -v pypy greedy.py 2>> ../Timings/PyPy2.txt
echo "   PyPy3: " > ../Timings/PyPy3.txt
/usr/bin/time -v pypy3 greedy.py 2>> ../Timings/PyPy3.txt