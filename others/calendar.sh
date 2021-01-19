#! /usr/bin/env bash

function checkLeap  {
    year=$1;
    if (( ! (year%400) )) || (( (! (year%4) ) && year%100 ))    ;
    then
        echo 1;
    else 
        echo 0;
    fi
}

function month2days {
    month=$1;
    declare -A monthdays=([Jan]=0 \
                          [Feb]=31 \
                          [Mar]=59 \
                          [Apr]=90 \
                          [May]=120 \
                          [Jun]=151 \
                          [Jul]=181 \
                          [Aug]=212 \
                          [Sep]=243 \
                          [Oct]=273 \
                          [Nov]=304 \
                          [Dec]=334)
    echo ${monthdays[$month]};
}

function rem2day {
    rem=$1;
    declare -A remDay=( [5]='Friday' \
                          [6]='Saturday' \
                          [0]='Sunday' \
                          [1]='Monday' \
                          [2]='Tuesday' \
                          [3]='Wednesday' \
                          [4]='Thursday' \
                            )
    echo ${remDay[$rem]};
}


function getDate {
    read -p "enter date (in numerals , eg : 21)" date;
    read -p "Enter the Month (only first three character\
& first character in caps, eg : Jan)" month ;
    read -p 'enter year' year ;
    echo $year $date $month
}

function calcDay {
    arr=( $(getDate) );
    leap=0;
    noleap=0;
    days=0;
    for (( c=1; c<${arr[0]}; c++ ));
    do
        if (( $(checkLeap $c) )) ;
        then
            ((leap++));
        else 
            ((noleap++));
        fi
    done
    days=$(($leap*366+$noleap*365));
    days=$(($days + $( month2days ${arr[2]} ) ));
    if (( $(month2days ${arr[2]})>59 )) && (( $(checkLeap ${arr[0]}) ));
    then 
        days=$days+1;
    fi
    days=$(( days+${arr[1]} ));
    rem=$(($days%7)) ;
    if (($days>577725));
    then 
        echo $(rem2day $rem);
    else 
        echo "This date are before start of gregorian calendar"
    fi
}

calcDay;