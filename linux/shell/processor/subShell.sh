#!/bin/bash


out="father var"

(

  inner="son var"
  #export是无效的，在父shell中是拿不到的
  export inner
  echo "$out"
  echo "$inner"
)

echo "$out"
echo "$inner"
