#!c:/strawberry/perl/bin/perl.exe

use strict;

#string
my $string = "Hola soy un string" ."\n";
print $string;
$string = "con comillas simples" . "\n";
print $string;

my $variable = "Incluyo texto: $string";
print $variable;

#integer
my $entero = -5;
print "\n" . $entero . "\n";

#float
my $decimal = 2.34;
print $decimal . "\n";

#octal
my $octal = 033445566;
print $octal . "\n";

#hexadecimal
my $hexadecimal = 0xFF00FF11;
print $hexadecimal . "\n";