#!/bin/bash

numerolinea=0 

cat $1 | while read linea; do 
	let numerolinea=$numerolinea+1 
	if test $(($numerolinea % 8)) -eq 0;then 
	 echo "#$numerolinea : $linea"
        fi
done > $1.cut


