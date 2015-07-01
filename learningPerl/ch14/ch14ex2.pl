#!/usr/bin/perl -w
# File Name: ch14ex2.pl
# Author: Yi Zhu
# Date: 2015/06/11
# Object: Sort the names hash data in case-insensitive alphabetical
# order by last name.
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
