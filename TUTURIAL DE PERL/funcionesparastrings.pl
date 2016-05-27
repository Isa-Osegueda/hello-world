#!c:/strawberry/perl/bin/perl.exe
use strict;
use warnings;

#binmode: permite indicar la codificación correcta para la entrada y la salida de datos,
#esta función permite indicar la codificación cp850 de la consola de windows para evitar
#que aparezcan caracteres extraños

binmode(STDOUT,  ":encoding(cp850)");#salida de datos
binmode(STDIN,  ":encoding(cp850)") ;#entrada de datos

my $string = "La condición \n";
print $string;
#chomp: elimina el salto de línea del final de un string
$string = "Hola mundo \n";
chomp($string) ;

#chop: Eliminar el última caracter de un string
$string = "012345";
chop($string);

#uc: convierte el string a mayúsculas
$string = "hola mundo \n";
print uc($string);

#lc: convierte el string en minúsculas
$string = "HOLA MUNDO \n";
print lc($string);

#length: regresa la longitud total del string seleccionado
$string = "cuentame";
my $total = length($string);
print $total . "\n" ;

#substr: Regresa el substring a través de las coordenadas inicio, final ,si es negativo
#la estracción se realiza de derecha a izquierda

$string = "hola mundo";

print substr($string, -5,5);

#index: devuelve la  posición de la primera ocurrencia del substring, la posicion inicial es 0,
#si el substring no es encontrado devuelve -1
$string = "programando con perl";
my $posicion = index($string, 'perl', 0);
print "\n la posición de perl en el string: $string es $posicion";
