#! /bin/bash
a=10
b=20

if [ $a == 10 ]
then
	echo 'a等于10'
fi


echo '---'

if [ $a == $b ]
then
	echo 'a等于b'
elif [ $a -gt $b ]
then
	echo 'a大于b'
elif [ $a -lt $b ]
then
	echo 'a小于b'
else
	echo '没有符合的条件'
fi

echo '---'

arr=(
aa
bb
cc
)
# $arr 需要写成${arr[@]} 或者 ${arr[*]}
for i in ${arr[*]};do echo $i; done;

echo '---'
items=(apple orange nut)

# =~ 需要使用[[ ]] ； 这里为什么不相等？
if [[ "$items[@]" =~ "orange" ]]
then
	echo 'orange'
else
	echo 'unknow'
fi
