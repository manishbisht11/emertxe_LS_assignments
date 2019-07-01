#!/bin/bash
#program to rename file/directory to lower/upper case

#checking argument given or not
if [ $# -eq 0 ]
then
	echo "pls give directory name"
	exit
fi

#checking given directory name exist or not
if [ ! -e $1 ]
then
    echo "not exist"
	exit
fi	

cd $1 
lists=(`ls`)

count=${#lists[@]}

for((i=0;i<count;i++))
do
	
	file=${lists[$i]}
	if [ -d $file ]
	then
	    newname=`echo $file | tr [:lower:] [:upper:]`
		if [ $file = $newname ]
		then
			continue;
		else
	        mv $file $newname
		fi

	 elif [ -f $file ]
	  then
		 newname=`echo $file | tr [:upper:] [:lower:]`
		 if [ $file = $newname ]
		 then
			 continue;
		 else
	         mv $file $newname
		 fi
	 fi
done
