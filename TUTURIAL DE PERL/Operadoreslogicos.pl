#!c:/strawberry/perl/bin/perl.exe

use strict;

#Operadores lógicos sirven para evaluar condiciones

#Tipos de operadores lógicos:
# && : AND evaluará si las dos condiciones son ciertas
#|| : OR evaluará si al menos una de las dos condiciones es cierta
#! : NOT evaluará si la condición no es cierta

my $numero1 = 2;
my $numero2 = 9;
my $numero3 = 4;
my $numero4 = 4;

if (!($numero1 < $numero2))
{
print "Verdadero";
}
else
{
print "Falso";
}