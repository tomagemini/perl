#!/usr/bin/perl -w
# File Name: dirListHandle.pl
# Author: Yi Zhu
# Date: 2015/07/27
# Object: ch13ex3 - Rewrite previous example with another way to list directory
# content (either by glob or directory handler). This program uses handle.
# Version: 1.10 - file name changes from ch13ex3.pl to dirListHandle.pl
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
