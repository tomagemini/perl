#!/usr/bin/perl -w
# File Name: mychdir.pl
# Author: Yi Zhu
# Date: 2015/07/27
# Object: ch13ex1 - Change the directory to the user input (default is his/her
# home directory) and list the directory content(not include . and ..)
# in alphabetical order.
# Version: 1.10 - file name changes from ch13ex1.pl to mychdir.pl
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

my @files = <*>;
say foreach (@files);
