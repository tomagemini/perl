#!/usr/bin/perl -w
# File Name: ch17ex2ans.pl
# Date: 2015/06/17
# Object: Chapter 17 official answer for exercises
use strict;
use 5.016;
use autodie;

foreach(glob('*'))
{
	my($atime, $mtime) = (stat)[8, 9];
	printf "%-20s %10d %10d\n", $_, $atime, $mtime;
}
