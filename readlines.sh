#!/bin/bash

#execute o script passando como parametroo arquivo que pretende ler
#./readlines.sh entrada.txt > saida.txt

#$x pode receber 0 ou 1 dependendo de como foi feita a leitura dos $valores
x=1	#contador de linhas

#valores referente às linhas desejadas
valores=(100 101 103 106 107 108 109 10 110 112 113 114 116 117 118 119 11 122 125 126 127 12 133 136 137 138 139 13 140 14 15 1 20 21 22 23 24 29 2 30 31 32 33 34 35 36 37 39 40 41 42 43 47 48 51 52 56 57 58 59 5 60 61 62 64 65 66 69 6 70 71 72 73 74 77 78 79 7 80 84 85 86 87 8 91 92 97 99)   

array_contains () {
    local seeking=$1; shift
    local in=0
    for element; do
        if [[ $element == $seeking ]]; then
            in=1
            break
        fi
    done
    return "$in"
}

while IFS='' read -r line || [[ -n "$line" ]]; do
	array_contains $x "${valores[@]}"
    teste=$?
    if [[ "$teste" == 1 ]]; then
		
		#echo "Text read from file: $x"
		echo $line
    	
  	fi
  	x=$(( x+1 ))
done < "$1"