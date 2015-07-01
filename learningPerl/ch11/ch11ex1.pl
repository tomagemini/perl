#!/usr/bin/perl -w
# File Name: ch11ex1.pl
# Author: Yi Zhu
# Date: 2015/06/05
# Object: Build a hash to display all modules that came with Perl 5.14
use strict;
use 5.016;
use Module::CoreList;

my %modules = %{$Module::CoreList::version{5.014}};

foreach my $key (sort keys %modules)
{
    my $value = $modules{$key} // "(undefined)";
    say "$key\t$value";
}
