#! /bash/bin -x


ran=$(( RANDOM % 2 ))

case $ran in

   0) echo "Heads Wins!" ;;

   1) echo "Tails Wins!" ;;

   *) echo "Invalid option" ;;

esac
