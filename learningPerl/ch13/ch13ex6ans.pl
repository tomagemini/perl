#!/usr/bin/perl -w
# File Name: ch13ex6ans.pl
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

link $source, $dest or die "Can't link '$source' to '$dest': $!\n";
