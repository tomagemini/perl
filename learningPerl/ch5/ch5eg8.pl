#!/usr/bin/perl -w
# Program Name: ch5eg8.pl
# Date: 2015/05/24
# Object: Chapter 5 book example.
use strict;
use 5.010;

print "This example is for file handles:\n";

print "Example 1 for write file:\n";
my $selected_output = 'my_output';
open LOG, "> $selected_output";
close LOG;
print "Example 2 for encodeing\n";
my $file_name = 'myfile';
open LOG, '>>:encoding(UTF-8)', $file_name;
close LOG;
print "Example 3 for Windows System(\\r\\n)\n";
open BEDROCK, '>:crlf', $file_name;
close BEDROCK;
##Binmode examples##
#binmode STDOUT, ':encoding(UTF-8)'; #ensure STDOUT knows what it gets
#binmode STDIN, ':encoding(UTF-8)';
print "Example 4 for bad filehandles\n";
my $success = open LOG, '>>', 'logfile'; #capture the return value
if(! $success)
{
	#the open fail
	print "open file fail";
}
