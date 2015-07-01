#!/usr/bin/perl -w
# Program Name: ch3ex3.pl
# Author: Yi Zhu
# Date: 2015/05/20
# Object: use two different output style to display result of ch3ex1,
# separeate lines and in one line.
use strict;

print "Please input a list of strings: \n";
chomp(my @strings = <>);
# one item per line output:
foreach (@strings)
{
	print "$_\n";
}
# all in one line:
print @strings;
