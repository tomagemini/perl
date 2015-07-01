#!/usr/bin/perl -w
# Program Name: ch4ex4ans.pl
# Date: 2015/05/20
# Object: Official Answer for chapter 4 example 4.
use 5.010;

greet( 'Fred' );
greet( 'Barney' );

sub greet
{
	state $last_person;

	my $name = shift;

	print "Hi $name! ";

	if(defined $last_person)
	{
		print "$last_person is also here!\n";
	}
	else
	{
		print "You are the first one here!\n";
	}
	$last_person = $name;
}

