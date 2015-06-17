#!/bin/bash

if ps -ef | grep [b]eanstalkd | grep -v running; then
	echo "beanstalkd running"
	exit 0
else
	echo "beanstalkd not running"
	exit 2
fi
