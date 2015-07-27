#!/usr/bin/perl -w
# File Name: slinks.pl
# Author: Yi Zhu
# Date: 2015/07/27
# Object: ch13ex8 - Write a program to find all symbolic links and list all of
# them in current directory.
# Version: 1.10 - file name changes from ch13ex8.pl to slinks.pl
use strict;
use 5.016;

my @files = <* .*>;

foreach (@files)
{
    my $link = readlink;
    say "$_ -> $link" if($link);
}
