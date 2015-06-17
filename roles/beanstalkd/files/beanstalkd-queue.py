#!/usr/bin/python
from __future__ import print_function
import beanstalkc
import sys

beanstalk = beanstalkc.Connection()
jobs_ready = beanstalk.stats()['current-jobs-ready']

print('Beanstalkd: ' + str(jobs_ready) + ' jobs are ready')
if int(jobs_ready) > 100:
    sys.exit(2)
else:
    sys.exit(0)
