#!/usr/bin/perl -w
# Program Name: ch4ex5ans.pl
# Date: 2015/05/20
# Object: Official Answer for chapter 4 example 5.
use 5.010;

greet( 'Fred' );
greet( 'Barney' );
greet( 'Wilma' );
greet( 'Betty' );

sub greet
{
	state @names;

	my $name = shift;

	print "Hi $name! ";

	if( @names )
	{
		print "I've seen: @names\n";
	}
	else
	{
		print "You are the first one here!\n";
	}
	push @names, $name;
}

