#!/usr/bin/env bash

#while :
#do
    pomodoro=`i3-gnome-pomodoro status`
    pomodoro=${pomodoro%' '*}
    pomodoro=${pomodoro%' PAUSED'}

    state=${pomodoro%' '*}
    time=${pomodoro#*' '}

    curr=`date +'%s' -d "00:"$time`
    progress=`expr 1500 + $curr - 1559156100`

    percentage=`expr $progress \* 75 / 1500`

    if [[ $state == "Break" ]]; then percentage=100; fi

    text=`echo '"text":"'$time'"'`
    percentage=`echo '"percentage":'$percentage`
    state=`echo '"state":"'$state'"'`

    echo '{'$text','$percentage','$state'}'
#done