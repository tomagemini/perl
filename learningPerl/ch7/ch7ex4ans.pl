#!/usr/bin/perl -w
# File Name: ch7ex5ans.pl
# Date: 2015/05/26
# Object: Official exercise answers for Chapter 7
use strict;
use 5.014;

while(<>)
{
    if(/(\S)\1/)
    {
	print;
    }
}
