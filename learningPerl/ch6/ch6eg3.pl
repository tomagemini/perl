#!/usr/bin/perl -w
# Program Name: ch6eg3.pl
# Date: 2015/05/25
# Object: Chapter 6 book examples
use strict;
use 5.010;

say "Hash functions";

my %hash = 
	(
	 'a' => 1,
	 'b' => 2,
	 'c' => 3,
	);
my @k = keys %hash;
my @v = values %hash;
my $count = keys %hash; #gets 3, meaning three key-value pairs

say "My hash keys are @k";
say "My hash values are @v";
say "There are $count pairs of key value pairs in my hash";

say "When hash used as a boolean, it will be true if the hash has at
least one pair of key-value pair.";
if(%hash)
{
	print "That was a true value!\n";
}

say "The each function:";
while((my ($key, $value)) = each %hash)
{
	print "$key => $value\n";
}

say "Sort the keys";
foreach my $key (sort keys %hash)
{
	my $value = $hash{$key};
	print "$key => $value\n";
	# Or, we could have avoided the extra $value variable:
	#print "$key => $hash{$key}\n";
}
