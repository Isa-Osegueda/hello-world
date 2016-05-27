#!usr/bin/perl
use strict;


# Operador de selección es un operador triario qaue permite hacer una cosa u otra
# dependiendo de la condición dada, se puede describir como el
# equivalente a una condicional simple con las sentencias if else

#Estructura: condicion ? accion1 : accion2

my $variable1 = 2;
my $variable2 = 4;

$variable1 > $variable2 ? print "ok" : print "error";