#! /shell/bash
for loop in 1 2 3 4 5
do
	echo "The value is: $loop"
done

echo '---'

for i in a b c d e f; do echo "The value is: $i";done;

echo '---'

arr=(aa bb cc dd ff)
for j in ${arr}; do echo "The value is: $j"; done;

for k in ${arr[@]}; do echo "The value is: $k"; done;

