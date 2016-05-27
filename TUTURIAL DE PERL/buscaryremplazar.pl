#!c:/strawberry/perl/bin/perl.exe

#Evitar caracteres extraños en la consola de windows
binmode(STDOUT, ":encoding(cp850)");
binmode(STDIN, ":encoding(cp850)");

use strict;

#ejemplo para un solo reemplazo
my $string = "hola hola hola hola";
$string =~ s/hola/adios/;
print $string . "\n";

 #ejemplo para reemplazar todas las concidencias
 $string = "hola hola hola hola";
 $string =~ s/hola/adios/g;
 print $string . "\n";

#ejemplo para reemplazar todas las concidencias ignorando mayusculas y minusculas
$string = "hola HOLA hola HOLA";
$string =~ s/hola/adios/gi;
print $string . "\n";

#ejemplo de reemplazos a traves de arrays
my @buscar = ('a','e','i','o','u');
my @reemplazar = (1,2,3,4,5);
$string = "En este string se reemplazaran las vocales por los numeros";

for (my $x = 0; $x < @buscar; $x++)
{
my	$_buscar = $buscar[$x];
my	$_reemplazar = $reemplazar[$x];
	$string =~ s/$_buscar/$_reemplazar/g;

}
print $string . "\n";