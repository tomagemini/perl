#!/usr/bin/perl -w
# Program Name: ch3ex2ans.pl
# Author: Learning Perl
# Object: Official Answer of chapter 3 example 2.
@names = qw/ fred betty barney dino wilma pebbles bamm-bamm /;
print "Enter some numbers from 1 to 7, one per line, then press Ctrl-D:\n";
chomp(@numbers = <STDIN>);
foreach (@numbers)
{
	print "$names[ $_ - 1 ]\n";
}
