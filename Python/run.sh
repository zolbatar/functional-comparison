#!/bin/bash

echo "Pythons"
echo "    Python2: " > ../Timings/Python2.txt
/usr/bin/time -v python2 greedy.py 2>> ../Timings/Python2.txt 1>> /dev/null
wc greedy.py >> ../Timings/Python2.txt
echo "4 5" >> ../Timings/Python2.txt
echo "    Python3: " > ../Timings/Python3.txt
/usr/bin/time -v python3 greedy.py 2>> ../Timings/Python3.txt 1>> /dev/null
wc greedy.py >> ../Timings/Python3.txt
echo "4 5" >> ../Timings/Python3.txt
echo "      PyPy2: " > ../Timings/PyPy2.txt
/usr/bin/time -v pypy greedy.py 2>> ../Timings/PyPy2.txt 1>> /dev/null
wc greedy.py >> ../Timings/PyPy2.txt
echo "4 5" >> ../Timings/PyPy2.txt
echo "      PyPy3: " > ../Timings/PyPy3.txt
/usr/bin/time -v pypy3 greedy.py 2>> ../Timings/PyPy3.txt 1>> /dev/null
wc greedy.py >> ../Timings/PyPy3.txt
echo "4 5" >> ../Timings/PyPy3.txt
echo "   Python3*: " > ../Timings/Python3Concurrent.txt
/usr/bin/time -v python3 greedy-concurrent.py 2>> ../Timings/Python3Concurrent.txt 1>> /dev/null
wc greedy-concurrent.py >> ../Timings/Python3Concurrent.txt
echo "4 5" >> ../Timings/Python3Concurrent.txt
echo "     PyPy3*: " > ../Timings/PyPy3Concurrent.txt
/usr/bin/time -v pypy3 greedy-concurrent.py 2>> ../Timings/PyPy3Concurrent.txt 1>> /dev/null
wc greedy-concurrent.py >> ../Timings/PyPy3Concurrent.txt
echo "4 5" >> ../Timings/PyPy3Concurrent.txt
