#!/usr/bin/perl -w
# File Name: ch11ex1ans.pl
# Date: 2015/06/08
# Object: Chapter 11 official exercise answer
use strict;
use 5.016;
use Module::CoreList;

my %modules = %{$Module::CoreList::version{5.014}};
print join "\n", keys %modules;
