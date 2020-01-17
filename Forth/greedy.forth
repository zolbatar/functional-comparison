\ gforth greedy.forth -e bye

\ Activity structure
struct
    cell% field id
    double% field lat
    double% field lon
end-struct activity%

activity% 500 * %allot constant activities

\ Open CSV file and save handle
0 VALUE fd-in
: open-csv s" ../Data/DataSPIF.csv" R/O OPEN-FILE THROW TO fd-in ;
: close-csv fd-in CLOSE-FILE THROW ;

\ Create line buffer to store each read in line
256 CONSTANT max-line
CREATE line-buffer max-line 2 + ALLOT

\ Read in CSV file
VARIABLE line-count
: read-csv ( addr u -- )
    0 line-count !
    BEGIN
        line-buffer max-line fd-in read-line throw

        \ Is this an activity or resource?
        line-buffer 0 chars + c@ 65 = 
        IF 
            ." Y "
            line-buffer 0 chars + c@ EMIT
            line-buffer 1 chars + c@ EMIT
            line-buffer 2 chars + c@ EMIT
            line-buffer 3 chars + c@ EMIT
            cr
        ELSE 
            ." N "
            line-buffer 0 chars + c@ EMIT
            line-buffer 1 chars + c@ EMIT
            line-buffer 2 chars + c@ EMIT
            line-buffer 3 chars + c@ EMIT
        THEN
        line-count @ 1+ line-count !
\    while
        line-count @ 500 >=
\        >r 2dup line-buffer r> compare 0=
    UNTIL
\    else
\        drop
\    then
\       2drop ;
;

open-csv
read-csv
close-csv
