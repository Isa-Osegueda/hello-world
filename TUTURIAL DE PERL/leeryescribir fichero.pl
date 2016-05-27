#!c:/perl64/perl/bin/perl.exe


binmode(STDOUT, ":encoding(cp850)");
binmode(STDIN, ":encoding(cp850)");

use strict;

#Modos: < read | > write | >> append

open(ARCHIVO, '>', 'prueba.txt');
print "Agrega contenido al archivo de texto: ";

my $contenido = <STDIN>;

print ARCHIVO $contenido;

close(ARCHIVO);