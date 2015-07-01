#!/usr/bin/perl -w
# File Name: ch10ex1ans.pl
# Date: 2015/06/03
# Object: Chapter 10 official exercise answers
use strict;
use 5.014;

my $secret = int(1 + rand 100);
# This next line may be un-commented during debugging
# print "Don't tell anyone, but the secret number is $secret.\n";

while(1)
{
    print "Please enter a guess from 1 o 100: ";
    chomp(my $guess = <STDIN>);
    if($guess =~ /quit|exit|\A\s*\z/i)
    {
	print "Sorry you gave up. The number was $secret.\n";
	last;
    }
    elsif($guess < $secret)
    {
	print "Too small. Try again!\n";
    }
    elsif($guess == $secret)
    {
	print "That was it!\n";
    }
    else
    {
	print "Too large. Try again!\n";
    }
}
