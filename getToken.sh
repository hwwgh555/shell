#! /bin/bash
conffile="userInfo.conf"
tarfile="src/mock/getEnvironment.js"
# sed中 `` ?
mail=$($egrep "username" $conffile | sed 's`username=\(.*\)`\1`' | sed 's`@`%40')
password=$(egrep "password" $conffile | sed 's`password=\(.*\)`\1`')
while [$# -gt 0]
do
    case $1 in
        -b) #?
            echo "export default {}" > $tarfile;
            exit 0;
        ;;
    esac # ?
    shift; # ?
done
echo $mail $password

res=$(curl 'http://xx.com/login' --data "loginUser="${mail}"&loginPwd="${password} | egrep "item" | sed 's`.*"item":"\(.*\)",.*`\1`')
echo $res > $tarfile
echo 'export default {"token":"'${res}'"}' > $tarfile