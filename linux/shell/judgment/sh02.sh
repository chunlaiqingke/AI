#!/bin/bash
sh ./sh01.sh
if [ $? == 0 ]; then
	echo 'success'
else
	echo 'failed'
fi

