#!c:/strawberry/perl/bin/perl.exe

#Evitar caracteres extraños en la consola de windows
binmode(STDOUT, ":encoding(cp850)");
binmode(STDIN, ":encoding(cp850)");

use strict;
use Sueldo;

my $sueldo = Sueldo: : new();
