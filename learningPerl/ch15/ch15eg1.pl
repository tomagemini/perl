#!/usr/bin/perl -w
# File Name: ch15eg1.pl
# Date: 2015/06/12
# Object: Chapter 15 book examples.
use strict;
use 5.016;

say "The Smart Match Operator";

sub max(@)
{
    my $result = shift;
    foreach (@_)
    {
	$result = $_ if($_ > $result);
    }
    $result;
}

my @nums = qw(1 2 3 27 42);
my $result = max(@nums);

if($result ~~ @nums)
{
    say "The result [$result] is one of the input values (@nums)";
}
else
{
    say "Not Found!";
}
