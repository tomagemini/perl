#!/usr/bin/perl -w
# File Name: ch17ex1.pl
# Author: Yi Zhu
# Date: 2015/06/17
# Object: Write a program to print access and modification times(in epoch
# time) of the files in current directory.
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
