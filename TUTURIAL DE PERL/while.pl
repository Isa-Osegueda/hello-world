#!usr/bin/perl
use strict;
use warnings;
my @numeros = (0,1,2,3,4,5,6,7,8,9);

my $x = 9;

while ($x >= 0)
{

	if ($x eq 5)
	{
		last;
	}
print $numeros [$x] . "\n";
$x--;
}

