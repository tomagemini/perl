#!/usr/bin/perl -w
# File Name: ch9ex2ans.pl
# Date: 2015/06/03
# Object: Official answer for Chapter 9 exercises
use strict;
use 5.014;

my $in = $ARGV[0];
if(! defined $in)
{
    die "Usage: $0 filename";
}
my $out = $in;
$out =~ s/(\.\w+)?$/.out/;

my $in_fh;
my $out_fh;

if(! open $in_fh, '<', $in)
{
    die "Can't open '$in': $!";
}
if(! open $out_fh, '>', $out)
{
    die "Can't write '$out': $!";
}

while(<$in_fh>)
{
    s/Fred/Larry/gi;
    print $out_fh $_;
}
