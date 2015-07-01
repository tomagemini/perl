#!/usr/bin/perl -w
# Program Name: ch3ex1.pl
# Author: Yi Zhu
# Date: 2015/05/20
# Object: Get an list from user and reverse it.
use strict;

print "Please input the list, one per line(<Ctrl>D or <Ctrl>Z to end
input):\n";
chomp(my @list = <>);
my @rev_list = reverse @list;
foreach (@rev_list)
{
	print "$_\n";
}
