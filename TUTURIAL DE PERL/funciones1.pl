#!c:/strawberry/perl/bin/perl.exe
use strict;


sub multiplicar
{
	my ($numero, $opcional) = @_;

	if (!defined($opcional))
	{
		$opcional = 5;
	}
	return $numero * $opcional;
}
print multiplicar (5) . "\n";
print multiplicar (4, 4) . "\n";

sub imagen
{
	my (%opciones) = @_;
	my %default = ('anchura' => 250, 'altura' => 250, 'color_fondo' => 'negro');
	foreach (keys %default)
{
if ($opciones {$_} eq undef)
{
	$opciones{$_} =  $default{$_};
}
}
	my $resultado = "La anchura de la imagen es:" . $opciones{'anchura'} . "\n";
	 $resultado .= "La altura de la imagen es:" . $opciones{'altura'}  . "\n";
	 $resultado .= "El color de fondo de la imagen es: " . $opciones{'color_fondo'} . "\n";
	return $resultado;
 }
 print imagen(('anchura' => 1000, 'altura' => 500, 'color_fondo' => 'azul')) ;
