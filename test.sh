#!/bin/bash
# different between $@ and $#
echo '$# \c'
echo $#

echo '$@ \c'
echo $@

echo '$* \c'
echo $*

echo '$0 \c'
echo $0

echo '$1 \c'
echo $1

echo '$2 \c'
echo $2


echo '$$ \c'
echo $$

echo '$? \c'
echo $?

echo '$- \c'
echo $-

# shell test.sh a b c
# 返回结果 3; a b c
# $# 参数数量； $@ 具体参数
