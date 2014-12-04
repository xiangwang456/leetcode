#!/usr/bin/env/ python
# -*- coding:utf-8 -*-

' a test module '
__author__='zzqq'

import sys

def test():
	args=sys.argv
	if len(args)==1:
		print 'hello,wordl'
	elif len(args)==2:
		print 'hello,%s' %(args[1])
	else:
		print 'too many arguments!'

if __name__=='__main__':
	test()