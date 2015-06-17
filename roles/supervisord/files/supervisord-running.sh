#!/bin/bash

if ps -ef | grep [s]upervisord | grep -v running; then
	echo "supervisord running"
	exit 0
else
	echo "supervisord not running"
	exit 2
fi
