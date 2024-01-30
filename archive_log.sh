#!/bin/bash 
#$Revisoin:001$
#$Tue 30 jan 2024 12:21:00 pm $

#variables 
BASE=/home/revati/scripting/shellproject
DAYS=30
DEPTH=1
RUN=0

#check if the directory is present or not

if [ ! -d $BASE ]
then 
	echo "directory does not exist : $BASE "
	exit 1
fi

#create archive folder if not present

if [ ! -d $BASE/archive ]
then
	mkdir $BASE/archive
fi

#find the list of files larger than 5MB

for i in find $BASE -maxdepth $DEPTH -type f -size + 10M

do
	echo "$i"
       if  [ $RUN == 0 ]
       then 
	       gzip    $i || exit 1
             mv  $i.gz $BASE/archive || exit 1

		

       fi
done
