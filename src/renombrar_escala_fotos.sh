#!/bin/bash
contadorUno=0
contadorDos=1
for file in *.jpg; do
	mv $file "bolivia_tv_portadas_16x9_$((contadorUno))$((contadorDos)).jpg";
	echo "$file, bolivia_tv_portadas_16x9_$((contadorUno))$((contadorDos)).jpg ";
	((contadorDos++));
	if [ $contadorDos -ge 10 ]; then
		((contadorUno++));
		contadorDos=0;
	fi;
done;

