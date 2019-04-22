#!/bin/sh

# Ruby
cd Ruby
echo "Ruby"
echo "       Ruby: " > ../Timings/Ruby.txt
rvm use ruby
/usr/bin/time -v ruby greedy.rb 2>> ../Timings/Ruby.txt
echo "TruffleRuby: " > ../Timings/TruffleRuby.txt
rvm use truffleruby
/usr/bin/time -v ruby greedy.rb 2>> ../Timings/TruffleRuby.txt 
cd ..
echo "JRuby: " > ../Timings/JRuby.txt
rvm use jruby
/usr/bin/time -v ruby greedy.rb 2>> ../Timings/JRuby.txt 
cd ..
