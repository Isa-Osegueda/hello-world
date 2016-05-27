#!c:/strawberry/perl/bin/perl.exe
use strict;

my @nombres = ('Raul','Dade', 'Fernando', 'Mario', 'Pepe', 'Manuel');

my $x = 0;

do {
print $nombres[$x] . "\n";
$x++; 
}
while ($x < @nombres);