#! /bash/bin -x

declare -A Heads
declare -A Tails

headsCount=0 
tailsCount=0

for (( i=1; i<=100; i++ ))
do
	ran=$(( RANDOM % 2 ))
		
	if	[ $ran -eq 0 ]
	then
		Heads[$headsCount]="H"
		((headsCount++))
	elif [ $ran -eq 1 ]
	then
		Tails[$tailsCount]="T"
		((tailsCount++))
	fi
done

#echo ${Heads[@]}
echo ${#Heads[@]} " is percentage of 'H' in singlet combination."
#echo ${Tails[@]}
echo ${#Tails[@]} " is percentage of 'T' in singlet combination."




