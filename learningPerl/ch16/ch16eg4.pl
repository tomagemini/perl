#!/usr/bin/perl -w
# File Name: ch15eg4.pl
# Date: 2015/06/16
# Object: Chapter 16 book examples
use strict;
use 5.016;

say 'Getting Down and Dirty with Fork';

defined(my $pid = fork) or die "Cannot fork: $!";
unless($pid)
{
	#child process is here
	exec 'date';
	die "cannot exec date: $!";
}
# parent process is here
waitpid($pid, 0);
