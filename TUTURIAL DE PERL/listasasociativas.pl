#!C:/strawberry/perl/bin/perl.exe
use strict;

# Las listas asociativas son aquellas listas en la que sus elementos están asociados a través 
# de una clave-valor

my %imagen = ('anchura' => 200, 'altura' => 60, 'color_fondo' => 'Azul');

print "Anchura de la imagen: " . $imagen {'anchura'} . "\n";
print "Altura de la imagen: "  . $imagen{'altura'}   .  "\n";
print "Color de fondo: " . $imagen{'color_fondo'};