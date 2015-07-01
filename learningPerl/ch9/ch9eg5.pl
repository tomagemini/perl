#!/usr/bin/perl -w
# File Name: ch9eg5.pl
# Date: 2015/05/28
# Object: Official book examples for Chapter 9
use strict;
use 5.014;

say 'The split Operator';

#it looks like: my @fields = split /separator/, $string
my @fields = split(/:/, "abc:def:g:h");
say 'gives: abc def g h';
say "@fields";

@fields = split(/:/, "abc:def::g:h");
say 'gives: abc def  g h';
say "@fields";

#leading empty fields are always returned, but trailing empty fields
#are discarded
@fields = split(/:/, ":::a:b:c:::");
say 'gives:    a b c';
say "@fields";

#using/\s+/ as pattern, all whitespace are equal to a single space
my $some_input = "This  is a \t       test.\n";
say "Original: \"$some_input\"";
my @args = split(/\s+/, $some_input);
say "gives: This is a test.)";
say "@args";

#The default for split is to break up $_ on whitespace:
$_ = "This is a test for     default   setting\t on split.";
say "\$_ is: $_";
@fields = split; # like split /\s+/, $_;
say "After split is: @fields";
