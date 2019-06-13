\ gforth greedy.forth -e bye

0 Value fd-in   
: open-input ( addr u -- ) r/o open-file throw to fd-in ;
: load-csv  s" ../Data/DataSPIF.csv" open-input ;

\ Read in CSV file
256 Constant max-line
Create line-buffer max-line 2 + allot
     
: scan-file ( addr u -- )
begin
    line-buffer max-line fd-in read-line throw
while
    line-buffer .
\        >r 2dup line-buffer r> compare 0=
    until
else
    drop
then
2drop ;

\ s" 0" scan-file

s" ../Data/DataSPIF.csv" slurp-file   ( str len ) Value file
.s