#!/usr/bin/perl -w
# File Name: ch17ex1ans.pl
# Date: 2015/06/17
# Object: Chapter 17 official answer for exercises
use strict;
use 5.016;
use autodie;

my $filename = 'sample_text.txt';
open my $fh, '<', $filename;
chomp(my @strings = <$fh>);
while(1)
{
	print 'Please enter a pattern: ';
	chomp(my $pattern = <STDIN>);
	last if $pattern =~ /\A\s*\Z/;
	my @matches = eval
	{
		grep /$pattern/, @strings;
	};
	if($@)
	{
		print "Error: $@";
	}
	else
	{
		my $count = @matches;
		print "There were $count matching strings:\n", map "$_\n", @matches;
	}
	print "\n";
}
