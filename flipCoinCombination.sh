#! /bash/bin -x

declare -A Heads
declare -A Tails
declare -A HH
declare -A TT
declare -A TH
declare -A HT

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

hhcount=0
ttcount=0
htcount=0
thcount=0

for (( i=1; i<=100; i++ ))
do
   ran1=$(( RANDOM % 2 ))
	ran2=$(( RANDOM % 2 ))	
	
	res=$ran1$ran2	

   if [ $res -eq 00 ]
   then
      HH[$hhcount]="HH"
      ((hhcount++))
   elif [ $res -eq 11 ]
   then
      TT[$ttcount]="TT"
      ((ttcount++))
	elif [ $res -eq 01 ]
	then
		HT[$htcount]="HT"
		((htcount++))
	elif [ $res -eq 10 ]
	then
		TH[$thcount]="TH"
		((thcount++))
   fi
done

#echo ${HH[@]}
echo ${#HH[@]} " is percentage of HH in doublet combination."      
#echo ${TT[@]}
echo ${#TT[@]} " is percentage of TT in doublet combination."
#echo ${HT[@]}
echo ${#HT[@]} " is percentage of HT in doublet combination."
#echo ${TH[@]}
echo ${#TH[@]} " is percentage of TH in doublet combination."
