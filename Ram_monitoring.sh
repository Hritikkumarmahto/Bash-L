#!/bin/bash

FREE_SPACE = ${ free -mt | grep "Total" | awk '{print $4}' }
LIMIT=500

if [[ $FREE_SPACE -lt $LIMIT ]]
then
	echo "Warning , Memory is getting full"
else
	echo "	Ram is sufficient "
fi

