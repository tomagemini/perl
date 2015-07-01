#!/usr/bin/perl -w
# File Name: ch13ex5ans.pl
# Date: 2015/06/09
# Object: Chapter 13 official exercises answers
use strict;
use 5.016;
use File::Basename;
use File::Spec;

my($source, $dest) = @ARGV;

if(-d $dest)
{
    my $basename = basename $source;
    $dest = File::Spec->catfile($dest, $basename);
}

rename $source, $dest or die "Can't rename '$source' to '$dest': $!\n";
