#!/bin/sh
V="0.1"
#sabryr  2019-11-21
#To tanslate the Phred scores
#Only one input character 

SCORES="! \" # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] a b c d e f g e i j k l m n o p q r s t u v w x y z  { | } ~ "
IFS=' ' #
read -ra ADDR <<< $SCORES # str is read into an array as tokens separated by IFS
POS=33
M_POS=0

for c in "${ADDR[@]}"; do # access each element of array
	if [ "$1" == "$c" ]
	then
		echo "$POS $c $M_POS"
	fi
	#if [ $c %  10 == 0 ]
	#then
	#	let M_POS=($M_POS+1)
	#fi
 
let POS=($POS+1)
done
