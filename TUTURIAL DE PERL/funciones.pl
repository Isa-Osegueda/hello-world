#!c:/strawberry/perl/bin/perl.exe
use strict;

#Funciones: son parte de código reservadas para realizar una tarea en concreto,
# es decir, una función es un nombre con una serie de instrucciones que posteriormente
# pueden ser llamadas en una o varias partes del script, las funciones permiten
# simplificar, ordenar y disminuir el número de líneas de código necesarias para
# realizar determinadas tareas que pueden ser repetitivas.

# Las funciones se declaran a través de la palabra reservada sub.

sub mensaje 
    {
	return "Hola Mundo";
    }

print mensaje() . "\n";

sub saluda
{
	my ($saluda) = @_;
	return $saluda;
}

print saluda("Te estoy saludando") . "\n";

sub sumar
{
	my ($numero1, $numero2) = @_;
	return $numero1 + $numero2;
}

	print sumar(10, 10) . "\n";
