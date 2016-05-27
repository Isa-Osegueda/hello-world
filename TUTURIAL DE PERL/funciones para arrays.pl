#!c:/strawberry/perl/bin/perl.exe

#Evitar caracteres extraños en la consola de windows
binmode(STDOUT, "encoding(cp850)");
binmode(STDIN, ":encoding(cp850)");

use strict;

#scalar: Devuelve el número total de elementos de un array
my @lista = (1,2,3,4,5) ;
print scalar (@lista) . "\n";

#join: Convierte un array en un string mediante el separador indicado
my @numero = ("uno","dos","tres","cuatro","cinco");
my $string = join ('-',@numero);cd..
print $string . "\n";

#split: Divide un string para convertirlo en un array a partir del patrón indicado
my $cadena = "uno dos tres cuatro";
my @lista = split (' ', $cadena);
foreach (@lista)
      {
	print $_ . "\n";
     }

     #shift: Elimina el primer elemento de un array
     my @nombres = ('raul','antonio','pedro');
     shift (@nombres);
     foreach (@nombres)
     {
     	print $_ . "\n";
     }

     #unshift: Permite añadir nuevos elementos al principio de un array
my @nueva_lista = ('Manuel', 'Fernando');
unshift(@nombres, @nueva_lista);
foreach (@nombres)
     {
     	print $_ . "\n";
     }

     #pop: elimina el ultimo elemento de un array
     my @paises = ('Argentina','Perú','Colombia','Venezuela');
     pop (@paises);
     foreach (@paises)
     {
     	print $_ . "\n";
     }

     #push: permite agregar nuevos elementos al final del array
     my @frutas = ('manzana','platano');
     my @nuevas_frutas = ('naranja','melocoton');
     push(@frutas,@nuevas_frutas);
     foreach (@frutas)
     {
     	print $_ . "\n";
     }
