#!/bin/bash
echo "pls. choose your profession?"
select var in "Worker" "Doctor" "Teacher" "Student" "Other"
do
  echo "The \$REPLY is $REPLY."
  echo "Your profession is $var"
break
done