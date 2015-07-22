#!/usr/bin/perl -w
# File Name: findCopy3x.pl
# Author: Yi Zhu
# Date: 2015/07/22
# Object: ch9ex1 - Make a pattern what will match three consecutive copies of
# whatever in $what.
# Version: 1.10 - file name changes from ch9ex1.pl to findCopy3x.pl
use strict;
use 5.014;

say "Please enter the pattern string:";
chomp(my $what = <>);
say $what;
say "Please enter the sample string to match:";
chomp($_ = <>);
say $_;
if(/($what){3}/)
{
    say "Pattern found in the sample string!";
}
else
{
    say "No match!";
}
