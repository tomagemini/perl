#!/usr/bin/perl -w
# File Name: ch17ex3ans.pl
# Date: 2015/06/17
# Object: Chapter 17 official answer for exercises
use strict;
use 5.016;
use POSIX qw/strftime/;

foreach my $file (glob('*'))
{
	my($atime, $mtime) = map
	{
		strftime('%Y-%m-%d', localtime($_));
	} (stat $file)[8, 9];
	printf "%-20s %10s %10s\n", $file, $atime, $mtime;
}
