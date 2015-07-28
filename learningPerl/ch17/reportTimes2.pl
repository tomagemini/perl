#!/usr/bin/perl -w
# File Name: reportTimes2.pl
# Author: Yi Zhu
# Date: 2015/07/28
# Object: ch17ex3 - Write a program to print access and modification times(in
# YYYY-MM-DD format) of the files in current directory.
# Version: 1.10 - file name changes from ch17ex3.pl to reportTimes2.pl
use strict;
use 5.016;
use autodie;

opendir DH, '.';
foreach (readdir DH)
{
	next if $_ =~ /^\.*$/;
#	say "== $_ ==";
	my @times = (stat $_)[8, 9];
#	say "@times";
#	say $_ foreach (@times);
	my @time = (map localtime($_), @times)[5, 4, 3, 14, 13, 12];
#	say "@time";
#	say $_ foreach (@time);
	printf("%-20s\t%04d-%02d-%02d\t%04d-%02d-%02d\n", $_, 1900 + $time[0],
		   $time[1] + 1 , $time[2], 1900 + $time[3], $time[4] + 1, $time[5]);
#	say "$atime";
#	say "$_\t$atime\t$mtime";
}
