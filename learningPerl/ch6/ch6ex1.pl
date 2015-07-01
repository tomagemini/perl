#!/usr/bin/perl -w
# File Name: ch6ex1.pl
# Author: Yi Zhu
# Date: 2015/05/26
# Object: Give out the family name for the given name user inputs
# each name.
use strict;
use 5.014;

my %names = (
    fred => 'flintstone',
    barney => 'rubble',
    wilma => 'flintstone',
    );

say "Please enter the given name:";
chomp(my $givenName = <>);

say "The family name for you given name is: $names{$givenName}";
