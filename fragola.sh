#!/bin/bash
WORK=1800
PAUSE=600
CURPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $(date +"%T") "Fragola started"
notify-send -i "$CURPATH/media/icon.ico" "Start to work" "It's time to work. Any distraction is forbidden!" && paplay "$CURPATH/media/start.ogg"
while true; do
    sleep $WORK && notify-send -i "$CURPATH/media/icon.ico" "Time of a break!" "Give yourself a short break!" && echo $(date +"%T") "Break" && paplay "$CURPATH/media/break.ogg"
    sleep $PAUSE && notify-send -i "$CURPATH/media/icon.ico"  "Back to work!" "It's time to work. Any distraction is forbidden!"&& echo $(date +"%T") "Back to work" && paplay "$CURPATH/media/start.ogg"
    sleep $WORK && notify-send -i "$CURPATH/media/icon.ico" "Time of a break!" "Give yourself a short break!" && echo $(date +"%T") "Break" && paplay "$CURPATH/media/break.ogg"
    sleep $PAUSE && notify-send -i "$CURPATH/media/icon.ico"  "Back to work!" "It's time to work. Any distraction is forbidden!"&& echo $(date +"%T") "Back to work" && paplay "$CURPATH/media/start.ogg"
    sleep $WORK && notify-send -i "$CURPATH/media/icon.ico" "Time of a break!" "Give yourself a short break!" && echo $(date +"%T") "Break" && paplay "$CURPATH/media/break.ogg"
    sleep $PAUSE && notify-send -i "$CURPATH/media/icon.ico"  "Back to work!" "It's time to work. Any distraction is forbidden!"&& echo $(date +"%T") "Back to work" && paplay "$CURPATH/media/start.ogg"
    sleep $WORK && notify-send -i "$CURPATH/media/icon.ico" "Time of a LONG break!" "Stand up and give yourself a long break" && echo $(date +"%T") "Long break" && paplay "$CURPATH/media/longbreak.ogg"
    sleep $PAUSE*2 && notify-send -i "$CURPATH/media/icon.ico"  "Back to work!" "It's time to work. Any distraction is forbidden!"&& echo $(date +"%T") "Back to work" && paplay "$CURPATH/media/start.ogg"
done
