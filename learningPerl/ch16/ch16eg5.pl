#!/usr/bin/perl -w
# File Name: ch15eg5.pl
# Date: 2015/06/16
# Object: Chapter 16 book examples
use strict;
use 5.016;

say 'Sending and Receiving Signals';

#syntax:
#kill 2, 4201 or die "Cannot signal 4201 with SIGINT: $!";
#kill 'INT', 4201 or die "Cannot signal 4201 with SIGINT: $!";
#kill INT => 4201 or die "Cannot signal 4201 with SIGINT: $!";

say 'Test if a process exists';
my $pid = fork;
unless(kill 0, $pid)
{
	warn "$pid has gone away!";
}

my $temp_directory = "/tmp/myprog.$$"; # create files below here
mkdir $temp_directory, 0700 or die "Cannot create $temp_directory: $!";

sub clean_up
{
	unlink glob "$temp_directory/*";
	rmdir $temp_directory;
}

sub my_int_handler
{
	clean_up();
	die "interrupted, exiting...\n";
}

$SIG{'INT'} = 'my_int_handler'; # name of the subroutine only, no & or ()
#.
#. ## Time passes, the program runs, creates some temporary files
#. ## in the temp directory, maybe someone press Ctrl-C
#.

# Now it's the end of normal execution
&clean_up();

# Suppose  processing each line of a file takes few seconds, which is very
# slow, and you want to abort the overall processing when an interrupt is
# processed -- but not in the middle of processing a line. Just set a flag in
# the signal procedure and check it at the end of each line's processing:
my $int_count = 0;
sub my_int_handler { $int_count++ }
$SIG{'INT'} = 'my_int_handler';
#...;
while(<SOMEFILE>)
{
	#...; # some processing that takes a few seconds ...
	if($int_count)
	{
		# interrupt was seen!
		print "[processing interrupted...]\n";
		last;
	}
}
