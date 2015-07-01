#!/usr/bin/perl -w
# File Name: ch17eg1.pl
# Date: 2015/06/16
# Object: Chapter 17 book examples
use strict;
use 5.016;

say 'Slices';

open my $fh, '<', 'ch17d1.dat' or die "Cannot read file ch17d1.dat: $!";

while(<$fh>)
{
	my($card_num, $count) = (split(/:/))[1, 5];
	#my($name, $card_num, $addr, $home, $work, $count) = split /:/;
    #my(undef, $card_num, undef, undef, undef, $count) = split /:/;
	say "$card_num => $count";
}

my @names = qw(zero one two three four five six seven eight nine);
say "Names are: @names";
my($first, $last) = (sort @names)[0, -1];
say "The first and last name after sort are: First => $first, Last => $last";
my @numbers = @names[9, 0, 2, 1, 0];
say "Pick names of index 9, 0, 2, 1, 0 are: @numbers";

say "Hash Slice";
#two syntax:
#my @three_scores = ($score{"barney"}, $score{"fred"}, $score{"dino"});
#my @three_scores = @score{qw(barney fred dino)};
my %score;
my @players = qw/barney fred dino/;
my @bowling_scores = (195, 205, 30);
@score{@players} = @bowling_scores;
print "Tonight's players were: @players\n";
print "Their scores were: @score{@players}\n";
