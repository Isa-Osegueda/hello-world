#!c:/strawberry/perl/bin/perl.exe
use strict;

my @nombres = ('mario','manuel','fernando','alberto');

foreach  my $elementos (@nombres)
{
	print $elementos . "\n";
}

my %asociativa = (1 => 'uno', 2 => 'dos', 3 => 'tres');

foreach (keys %asociativa)
{
	print "clave: $_---- Valor: ".$asociativa{$_}."\n";
}





















[]
