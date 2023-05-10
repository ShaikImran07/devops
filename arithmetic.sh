#!/bin/sh
echo "Addition"
VAL=`expr 2 + 2`

echo "$VAL"

echo "Substract"

SUB=`expr 4 - 2`

echo "$SUB"

echo "Division"
DIV=`expr 10 / 2`

echo "$DIV"

echo "Multiply"

MUL=`expr 4 * 4`

echo "$MUL"

echo "Modulus"

MOD=`expr 12 % 5`

echo "$MOD"

MOD1=`expr 15 % 5`

echo "$MOD1"


echo "============="

EQ=`expr 10 == 2`

echo "$EQ"

NEQ=`expr 5 != 2`

echo "$NEQ" 