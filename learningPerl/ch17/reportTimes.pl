#!/usr/bin/perl -w
# File Name: reportTimes.pl
# Author: Yi Zhu
# Date: 2015/07/28
# Object: ch17ex2 - Write a program to print access and modification times(in
# epoch time) of the files in current directory.
# Version: 1.10 - file name changes from ch17ex2.pl to reportTimes.pl
use strict;
use 5.016;
use autodie;

opendir DH, '.';
foreach (readdir DH)
{
	next if $_ =~ /^\.*$/;
	my($atime, $mtime) = (stat $_)[8, 9];
	say "$_\t$atime\t$mtime";
}
