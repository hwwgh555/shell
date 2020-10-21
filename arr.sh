#! /bin/bash
projects=(a b c d e f)
echo '${projects[1] \c'
echo ${projects[1]}

echo 'projects[*]'
for i in ${projects[*]};do echo $i; done

echo 'projects[@]'
for i in ${projects[@]};do echo $i; done


# https://baijiahao.baidu.com/s?id=1608244941950314734&wfr=spider&for=pc 参考
# 里面有4种遍历方式 当""包围时，*与@结果可能不同
