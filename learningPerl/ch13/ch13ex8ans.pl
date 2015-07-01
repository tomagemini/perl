#!/usr/bin/perl -w
# File Name: ch13ex8ans.pl
# Date: 2015/06/09
# Object: Chapter 13 official exercises answers
use strict;
use 5.016;
use File::Basename;
use File::Spec;

foreach (glob('.* *'))
{
    my $dest = readlink $_;
    print "$_ -> $dest\n" if definded $dest;
}
