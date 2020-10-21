#! /bin/bash

curItem=callcli

projects=(kbcli callcli xxcli)

for i in $projects;
do
if[[ $projects =~ $i ]];
	echo "true"
fi
done
