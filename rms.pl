#!/usr/bin/perl -w
# File Name: rms.pl
# Author: Yi Zhu
# Date: 2015/06/18
# Object: This program removes any spaces in files in current directory.
# Version: 1.000
use strict;
use 5.016;

my $USAGE = "Usage: $0 [filepath].";

my $basename = basename $ARGV[0];
my $dirname = dirname $ARGV[0];
say "basename: $basename, dirname: $dirname";
my $file = defined($basename) ? $basename . $dirname : $basename . '*';
say $file;
foreach (glob($file))
{
	my @tokens = split;
	my $newName = join '', @tokens;
	rename $_ => $newName;
}

