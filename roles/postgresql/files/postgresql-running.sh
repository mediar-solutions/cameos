#!/bin/bash

if ps -ef | grep [p]ostgresql | grep -v running; then
	echo "postgresql running"
	exit 0
else
	echo "postgresql not running"
	exit 2
fi
