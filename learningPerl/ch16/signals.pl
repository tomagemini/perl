#!/usr/bin/perl -w
# File Name: signals.pl
# Date: 2015/07/28
# Object: Chapter 16 official answers for exercies 4
# Verison: 1.10 - file name changes from ch16ex4ans.pl to signals.pl
use strict;
use 5.016;

sub my_hup_handler { state $n; say 'Caught HUP: ', ++$n }
sub my_usr1_handler { state $n; say 'Caught USR1: ', ++$n }
sub my_usr2_handler { state $n; say 'Caught USR2: ', ++$n }
sub my_int_handler { say 'Caught INT. Exiting.'; exit}

say "I am $$";

foreach my $signal (qw(int hup usr1 usr2))
{
	$SIG{uc $signal} = "my_${signal}_handler";
}

while(1) { sleep 1; };
