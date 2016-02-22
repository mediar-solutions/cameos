#!/bin/bash

if ps -ef | grep [r]edis-server | grep -v running; then
	echo "redis running"
	exit 0
else
	echo "redis not running"
	exit 2
fi
