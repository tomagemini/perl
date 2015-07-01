#!/usr/bin/perl -w
# Program Name: ch6eg1.pl
# Date: 2015/05/25
# Object: Chapter 6 book examples
use strict;
use 5.010;

my %family_name;
$family_name{'fred'} = 'flintstone';
$family_name{'barney'} = 'rubble';

foreach my $person (qw(barney fred))
{
	print "I've heard of $person $family_name{$person}.\n";
}

say "key can be expressions too";
my $foo = 'bar';
print "\$family\{\$foo \. 'ney'\} is: ", $family_name{$foo . 'ney'}, "\n";
#prints 'rubble'

say "overwrites hash element value:";
$family_name{'fred'} = 'astaire'; #gives new value to existing element
my $bedrock = $family_name{'fred'}; #gets 'astaire'; old value is lost
say "\$family_name\{'fred'\} now is: $bedrock";

say "add new elements to hash:";
$family_name{'wilma'} = 'flintstone'; #adds a new key (and value)
$family_name{'betty'} .= $family_name{'barney'}; #creates the element
say "new elements are: wilma with value $family_name{'wilma'}.";
say "And betty with value $family_name{'betty'}.";

say "accesssing outside of the hash gives undef";
my $granite = $family_name{'larry'}; #no larry here: undef
#say "value of \$family_name\{'larry'\} is: $granite";
