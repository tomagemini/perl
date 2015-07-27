#!/usr/bin/perl -w
# File Name: dirListGlob.pl
# Author: Yi Zhu
# Date: 2015/07/27
# Object: ch13ex2 - Change the directory to the user input (default is his/her
# home directory) and list the directory content(include . and ..)
# in alphabetical order. This programe uses glob.
# Version: 1.10 - file name changes from ch13ex2.pl to dirListGlob.pl
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

my @files = <* .*>;
say foreach (@files);
