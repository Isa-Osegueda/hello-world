#!c:/strawberry/perl/bin/perl.exe
use strict;
use warnings;

my @numeros = (0,1,2,3,4,5,6,7,8,9);

for (my $x = 0; $x < @numeros; $x++)
{
	print $numeros [$x] . "\n";
}