#! bin/bash

if [ $# -lt 1 ];
then
    quantity=20
else
    quantity=$1
fi
file="image"
j=".jpeg"
if [ -d attachments ];
then
    rm -r attachments
fi
mkdir attachments
for ((i=0;i<quantity;i++))
do
curl https://picsum.photos/800/400 -L >"attachments/$file$i$j"
done
