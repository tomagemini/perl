#!/usr/bin/perl -w
# Program Name: ch2ex4.pl
# Author: Yi Zhu
# Date: 2015/05/20
# Object: Get inputs of two numbers from user and return the product
# of them.
use strict;

print "Please input the first number: \n";
chomp(my $num1 = <>);
if($num1 =~ /^[+-]?\d+(.\d+)?([Ee][-]?\d+)?$/)
{
	print "Please input the second number: \n";
	chomp(my $num2 = <>);
	if($num2 =~ /^[+-]?\d+(.\d+)?([Ee][-]?\d+)?$/)
	{
		print "The product of the input numbers is ", $num1 * $num2,
		".\n";
	}
	else
	{
		print "Invalid input for the second number.\n";
		exit 1;
	}
}
else
{
	print "Invalid input for the first number.\n";
}
