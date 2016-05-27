#!C:/strawberry/perl/bin/perl.exe
use strict;

# Una lista multidimensional es una lista en la cual entre sus elementos hay otras listas.
my @empleados = (['Antonio', 24],['Fernando', 30,['Calle Rosario', 34]],['Mario', 21]);

print "Nombre del empleado: " . $empleados [2][0] . "\n";
print "Edad del empleado: " .$empleados [2][1] . "\n";
print "Calle del empleado: " . $empleados[1][2][0] . "\n";
print "Numero de su vivienda: " . $empleados [1][2][1];