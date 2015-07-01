#!/usr/bin/perl -w
# File Name: ch13ex8.pl
# Author: Yi Zhu
# Date: 2015/06/09
# Object: Write a program to find all symbolic links and list all of
# them in current directory.
use strict;
use 5.016;

my @files = <* .*>;

foreach (@files)
{
    my $link = readlink;
    say "$_ -> $link" if($link);
}
