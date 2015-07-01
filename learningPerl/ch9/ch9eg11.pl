#!/usr/bin/perl -w
# File Name: ch9eg11.pl
# Date: 2015/06/01
# Object: Official book examples for Chapter 9
use strict;
use 5.014;

say "In-Place Editing from the Command Line";

say "Example:";
say "perl -p -i.bak -w -e 's/Randall/Randal/g' fred*.dat";
print <<'EOF';
-p option tells Perl to write a program for you like:
while(<>)
{
    print;
}

if you want even less, you can use -n so that it will have only print

-i.bak means backup file with the extension .bak.
if you do NOT want to have the backup file, use -i alone(NOT
							 RECOMMENDED)

-e options means execute the following codes.
In this example, the automatically made program is like:
#!/usr/bin/perl -w

$^I = ".bak";
while(<>)
{
    s/Randall/Randal/g;
    print;
}
EOF
