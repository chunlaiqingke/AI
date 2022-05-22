#!/bin/bash

#冒号代表永真
i=0
while : ; do
  if ((i++ < 10)); then
    echo $i
    continue
  fi
  break
done