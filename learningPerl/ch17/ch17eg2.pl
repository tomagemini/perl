#!/usr/bin/perl -w
# File Name: ch17eg2.pl
# Date: 2015/06/16
# Object: Chapter 17 book examples
use strict;
use 5.016;

say 'Trapping Errors';

my $fred = 4;
my $dino = 0;
my $barney = eval{ $fred / $dino } // 'NaN';
#If eval caught a fatal error, it returns undef and puts the error message in
# the $@ special variable. If there was no error, $@ will be empty. That means
# $@ is a boolean value, true if there was an error.
print "I couldn't divide by \$dino: $@" if $@;

#In list context, a failed eval returns an empty list. In this time, @averages
# only gets two elements if eval fails.
my @averages = (2/3, eval{$fred / $dino}, 22/7);
say "\@averages is @averages";

#The eval block is used to catch all errors in that block. And eval can
#nest. The inner eval traps errors in its block, keeping them from reaching
#the outer blocks.
foreach my $person (qw/fred wilma betty barney dino pebbles/)
{
	eval
	{
		open my $fh, '<', $person or die "Can't open file '$person': $1!";
		my($total, $count);
		while(<fh>)
		{
			$total += $_;
			$count++;
		}
		my $average = eval{ $total / $count } // 'NaN'; # Inner eval
		print "Average for file $person was $average\n";
#		&do_something($person, $average);
	};
	
	if($@)
	{
		print "An error occured ($@), continueing\n";
	}
}

#There are four kinds of problems eval can't trap
#1. syntax error, which perl complier catches
#2. serious error that crash perl itself, such as running out of memeory or
#getting and untrapped signal.
#3. warnings, either user-generated from warn, or Perl's -w progma
#4. exit statement.
