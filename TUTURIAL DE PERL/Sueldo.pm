package Sueldo;

use strict;
use Empleado;

my @ISA = qw(Empleado);

sub new
{
	my $self = new Empleado();
	$self->{dias trabajados} = 0;
	$self->{sueldo_diario} = 0;

	bless $self, 'Sueldo';
	return $self;
}
sub sueldo
{
	my ($self) = @_;
	return $self_>{dias_trabajados} * self->{sueldo_diario};
}
1;




}