#! /bash/bin -x

declare -A Heads
declare -A Tails
declare -A HH
declare -A TT
declare -A TH
declare -A HT
declare -A HHH
declare -A HHT
declare -A HTH
declare -A HTT
declare -A THH
declare -A THT
declare -A TTH
declare -A TTT

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

hhhcount=0
hhtcount=0
hthcount=0
httcount=0
thhcount=0
thtcount=0
tthcount=0
tttcount=0

for (( j=1; j<=100; j++ ))
do
   ran3=$(( RANDOM % 2 ))
   ran4=$(( RANDOM % 2 ))
	ran5=$(( RANDOM % 2 ))  
   
   result=$ran3$ran4$ran5

   if [ $result -eq 000 ]
   then
      HHH[$hhhcount]="HHH"
      ((hhhcount++))
   elif [ $result -eq 001 ]
   then
      HHT[$hhtcount]="HHT"
      ((hhtcount++))
   elif [ $result -eq 010 ]
   then
      HTH[$hthcount]="HTH"
      ((hthcount++))
	elif [ $result -eq 011 ]
	then
		HTT[$httcount]="HTT"
		((httcount++))
	elif [ $result -eq 100 ]
	then
		THH[$thhcount]="THH"
		((thhcount++))
	elif [ $result -eq 101 ]
	then
		THT[$thtcount]="THT"
		((thtcount++))
	elif [ $result -eq 110 ]
	then
		TTH[$tthcount]="TTH"
		((tthcount++))
	elif [ $result -eq 111 ]
	then
		TTT[$tttcount]="TTT"
		((tttcount++))
   fi
done

#echo ${HHH[@]}
echo ${#HHH[@]} " is percentage of 'HHH' in Triplet combination."
#echo ${HHT[@]}
echo ${#HHT[@]} " is percentage of 'HHT' in Triplet combination."
#echo ${HTH[@]}
echo ${#HTH[@]} " is percentage of 'HTH' in Triplet combination."
#echo ${HTT[@]}
echo ${#HTT[@]} " is percentage of 'HTT' in Triplet combination."
#echo ${THH[@]}
echo ${#THH[@]} " is percentage of 'THH' in Triplet combination."
#echo ${THT[@]}
echo ${#THT[@]} " is percentage of 'THT' in Triplet combination."
#echo ${TTH[@]}
echo ${#TTH[@]} " is percentage of 'TTH' in Triplet combination."
#echo ${TTT[@]}
echo ${#TTT[@]} " is percentage of 'TTT' in Triplet combination."

if [ ${#Heads[@]} -gt ${#Tails[@]} ]
then
	echo "The combination 'H' in singlet is most winning combination."
elif [ ${#Heads[@]} -lt ${#Tails[@]} ]
then
	echo "The combination 'T' in singlet is most winning combination."
else
	echo "The combination 'T' and 'H' in singlet are winning combinations."
fi
