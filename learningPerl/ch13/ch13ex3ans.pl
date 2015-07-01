#!/usr/bin/perl -w
# File Name: ch13ex3ans.pl
# Date: 2015/06/09
# Object: Chapter 13 official exercises answers
use strict;
use 5.016;

print "Which directory? (Default is your home directory) ";
chomp(my $dir = <STDIN>);
if($dir =~ /\A\s*\Z/) # a blank line
{
    chdir or die "Can't chdir to your home directory: $!";
}
else
{
    chdir $dir or die "Can't chdir to '$dir': $!";
}

opendir DOT, "." or die "Can't opendi dot: $!";
foreach (sort readdir DOT)
{
    #next if /\A\./; ## if we were skipping dot files
    print "$_\n";
}
