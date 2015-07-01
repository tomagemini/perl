#!/usr/bin/perl -w
# Program Name: ch5eg9.pl
# Date: 2015/05/24
# Object: Chapter 5 book example.
use strict;
use 5.010;

print "This example is for using filehandles:\n";

if(! open PASSWD, "etc/passwd")
{
	die "How did you get logged in?($!)";
}

while(<PASSWD>)
{
	chomp;
	print $_;
}
##Changing the Default Output Filehandle##
#select BEDROCK;
#print "I hope Mr. Slate doesn't find out about this.\n";
#print "wilma!\n";
##flush buffer example
#select LOG;
#$| = 1; #don't keep LOG entries sitting in the buffer
#select STDOUT;
## ... time passes, babies learn to walk, tectonic plates shift, and
## then...
#print LOG "This gets written to the LOG at once!\n";
