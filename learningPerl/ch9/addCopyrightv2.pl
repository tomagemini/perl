#!/usr/bin/perl -w
# File Name: addCopyrightv2.pl
# Date: 2015/06/03
# Object: ch9ex5 - A program to add a line after the shebang. But it won't add
# to any file already has that line.
# Version: 1.10 - add a $USAGE
#               - modified else part for error inputs
#               - filename changes from ch7ex3.pl to showCap.pl
use strict;
use 5.014;

my $USAGE = "Usage: $0 filenames.";

if(@ARGV > 0)
{
	my %do_these;
	foreach (@ARGV)
	{
		$do_these{$_} = 1;
	}
	while(<>)
	{
		if(/\A## Copyright/)
		{
			delete $do_these{$ARGV};
		}
	}
	@ARGV = sort keys %do_these;
	$^I= '.bak';
	while(<>)
	{
		if(/\A#!/)
		{
			$_ .= "## Copyright (c) 2015 by Yours Truly\n";
		}
		print;
	}
}
else
{
    say "Error! There is no input. $USAGE";
}
