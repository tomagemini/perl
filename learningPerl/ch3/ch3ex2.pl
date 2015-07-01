#!/usr/bin/perl -w
# Program Name: ch3ex2.pl
# Author: Yi Zhu
# Date: 2015/05/20
# Object: Output the item in an array with the index of user input by order.
use strict;

my @names = qw(fred betty barney dino wilma pebbles bamm-bamm);
print "Please input number in the range of 0 to 6: \n";
chomp(my @list = <>);
foreach (@list)
{
	if($_ >= 0 || $_ <= 6)
	{
		print "$names[$_] ";
	}
	else
	{
		print "Invalid inputs! Must be integers between 0 to 6";
		exit 1;
	}
}
