#!/usr/bin/perl -w
# Program Name: ch5eg11.pl
# Date: 2015/05/24
# Object: Chapter 5 book example.
use strict;
use 5.010;

print "This example is Filehandles in a scalar:\n";

my $rocks_fh;
print "Example to read:\n";
open $rocks_fh, '<', 'rocks.txt' or die "Could not open rocks.txt:$!";
while(<$rocks_fh>)
{
	chomp;
	say $_;
}

print "Example to write:\n";
open $rocks_fh, '>>', 'rocks.txt' or die "Could not open
rocks.txt:$!";
foreach my $rock (qw(slate lava granite))
{
	say $rocks_fh $rock;
}
print $rocks_fh "limestone\n";
close $rocks_fh;

print "Example to print out:\n"
#print $rocks_fh, "limestone\n"; #WRONG output will
#be:GLOB(0xABCDEF12)limestone
#print $rocks_fh; #WRONG since perl will treat it as a scalar
#print {$rocks_fh}; #use $_ by default
#print {$rocks_fh[0]} "sandstone\n";
