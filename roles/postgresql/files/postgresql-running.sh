#!/bin/bash

if ps -ef | grep [p]ostgresql; then
	echo "postgresql running"
	exit 0
else
	echo "postgresql not running"
	exit 2
fi
