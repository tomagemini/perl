#!/usr/bin/perl -w
# Program Name: ch2ex2.pl
# Author: Yi Zhu
# Date: 2015/05/20
# Object: Calculate the circumference of a circle with a radius of
#         user input.
use strict;

my $pi = 3.141592654;

print "Please enter the radius of a circle: \n";
chomp(my $radius = <>);

if($radius =~ /^\d+(.\d+)?$/)
{
	print "The circumference of a circle with a radius of 12.5 is ",
	2*$pi*$radius, ".\n";
}
else
{
	print "Invalid input of radius.\n";
	exit 1;
}

