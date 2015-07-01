#!/usr/bin/perl -w
# File Name: ch13ex3.pl
# Author: Yi Zhu
# Date: 2015/06/09
# Object: Rewrite previous example with another way to list directory
# content (either by glob or directory handler).
use strict;
use 5.016;

say "Please enter a directory:";
chomp(my $dir = <STDIN>);
if($dir)
{
    chdir $dir or die "Cannot change to '$dir' $!";
}
else
{
    chdir or die "Cannot change to home directory $!";
}

opendir DIR, '.' || die "Cannot open '$dir': $!";
say foreach(sort readdir DIR);
closedir DIR;
