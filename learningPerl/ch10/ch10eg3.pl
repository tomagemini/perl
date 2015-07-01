#!/usr/bin/perl -w
# File Name: ch10eg3.pl
# Date: 2015/06/03
# Object: Chapter 10 book examples
use strict;
use 5.014;

say "Loop Control: redo";
# Typing test
my @words = qw(fred barney pebbles dino wilma betty);
my $errors = 0;

foreach (@words)
{
    ## redo comes here ##
    print "Type the word '$_': ";
    chomp(my $try = <STDIN>);
    if($try ne $_)
    {
	print "Sorry - That's not right.\n\n";
	$errors++;
	redo; ## jump back up to the top of the loop
    }
}
print "You've completed the test, with $errors errors.\n";
