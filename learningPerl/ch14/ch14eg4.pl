#!/usr/bin/perl -w
# File Name: ch14eg4.pl
# Date: 2015/06/11
# Object: Chapter 14 book examples
use strict;
use 5.016;

say "Advanced Sorting";

#sort Unicode:
#use Unicode::Normalize;
#sub equivalents
#{
#    NFKD($a) cmp NFKD($b);
#}
my @numbers = qw(100 3 0.2 -45 33);
my @ascending = sort {$a <=> $b} @numbers;
my @descending = sort {$b <=> $a} @numbers;
say "Numbers are: @numbers";
say "Ascending order: @ascending";
say "Descending order: @descending";

say "Sorting a Hash by Value";

my %score = (
    barney => 195,
    fred => 205,
    dino => 30,
    'bamm-bamm' => 195,
    );

sub by_score
{
    $score{$b} <=> $score{$a};
}

my @winners = sort by_score keys %score;
foreach (@winners)
{
    say "$_ => $score{$_}";
}

say "sorting by Multiple Keys";
sub by_score_and_name
{
    $score{$b} <=> $score{$a} or $a cmp $b;
}

my @result = sort by_score_and_name keys %score;
foreach (@result)
{
    say "$_ => $score{$_}";
}
