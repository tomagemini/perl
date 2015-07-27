#!/usr/bin/perl -w
# File Name: nameSort.pl
# Author: Yi Zhu
# Date: 2015/07/27
# Object: ch14ex2 - Sort the names hash data in case-insensitive alphabetical
# order by last name.
# Version: 1.10 - file name changes from ch14ex2.pl to nameSort.pl
use strict;
use 5.016;

my %last_name = qw{
fred flintsonte Wilma Flintstone Barney Rubble betty rubble Bamm-Bamm
Rubble PEBBLES FLINTSTONE};

sub sort_by_names
{
    "\L$last_name{$a}" cmp "\L$last_name{$b}" or "\L$a" cmp "\L$b";
}

my @result = sort sort_by_names keys %last_name;
say "$last_name{$_}, $_" foreach (@result);
