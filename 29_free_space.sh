#!/bin/bash
#to get total count
count=`df --output=size,avail | wc -l`

for (( i = 2; i <= $count; i++ ))
do
    used=`df --output=used | sed -n "$i"p`
    available=`df --output=avail | sed -n "$i"p`

    fileSys=`df --output=source | sed -n "$i"p`

    #echo -n "$fileSys 's free space"
    final=$(($(($(($available*100))))/$(($available+$used))))
    #echo "--> $final"

    if [ $final -le 10 ]
    then
        echo "$fileSys has free space less than 10%"
    fi
done

