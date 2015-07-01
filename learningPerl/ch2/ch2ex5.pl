#!/usr/bin/perl -w
# Program Name: ch2ex5.pl
# Author: Yi Zhu
# Date: 2015/05/20
# Object: Get inputs of one number and one string from user and return
# the replication of the string the number of times.
use strict;

print "Please input the number: \n";
chomp(my $num = <>);
if($num =~ /^[+-]?\d+(.\d+)?([Ee][-]?\d+)?$/)
{
	print "Please input the string: \n";
	chomp(my $str = <>);
	print "The output is: ", $str x $num, "\n";
}
else
{
	print "Invalid input for the number.\n";
	exit 1;
}
