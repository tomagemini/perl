#!/usr/bin/perl -w
# File Name: ch13ex2ans.pl
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

my @files = <* .*>;
foreach (@files)
{
    print "$_\n";
}
