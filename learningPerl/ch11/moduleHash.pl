#!/usr/bin/perl -w
# File Name: moduleHash.pl
# Author: Yi Zhu
# Date: 2015/07/23
# Object: ch11ex1 - Build a hash to display all modules that came with Perl
#         5.14 
# Version: 1.10 - file name changes from ch11ex1.pl to moduleHash.pl
use strict;
use 5.016;
use Module::CoreList;

my %modules = %{$Module::CoreList::version{5.014}};

foreach my $key (sort keys %modules)
{
    my $value = $modules{$key} // "(undefined)";
    say "$key\t$value";
}
