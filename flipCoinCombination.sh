#! /bash/bin -x


ran=$(( RANDOM % 2 ))

case $ran in

   1) echo "Tail's Wins!" ;;

   0) echo "Head's Wins!" ;;

   *) echo "Invalid option" ;;

esac
