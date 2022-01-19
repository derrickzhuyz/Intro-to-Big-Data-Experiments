#!/bin/bash
infile=$1
outfile=$2
awk -F "," 'BEGIN{
id=0;
}
{
if($1 && $2 && $3 && $4 && $5!=-1){
id=id+1;
print $1","$2","$3","$4","1
if(id==10000){
exit
}
}
}' $infile > $outfile
