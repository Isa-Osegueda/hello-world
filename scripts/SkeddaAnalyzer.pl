#!usr/bin/perl
use strict;
use warnings;
use Data::Dumper;



#Agregar un output en donde se copien las líneas donde inconsistencia de formato fue encontrada
#Agregar command line input switches para: 
#	input file, 
#	tipos de reporte, 
#	conversión de ';' separated a ',' separated
#	help
#	get input reference file with the detail of how many hours each user has included in plan by default
#	get input specifying the costs of each hour depending on the space

#Declaración de variables
my $inputFile = 'bookings.csv'; 
my $outputfile = ();
print "\nEl archivo de entrada es: $inputFile\n";
$inputFile =~ /(\w+)(\.\w+)/;
$outputfile = $1."Reporte"."$2";
print  "\n$outputfile\n";#<STDIN>;
my $year = ();
my $month = ();
my $day = ();
my %summary1 = (); #hash
my @tempLine = (); #array - arreglo
my $start = ();
my $space = ();
my $email = ();
my $duration = ();
my $cumDuration = ();
my $organization = ();

#Abriendo el archivo para lectura
open (my $fh, '<', $inputFile) or die "Could not open file '$inputFile' $!";
open (my $fh2, '>', $outputfile) or die "Could not open file '$outputfile' $!";

# < lectura
# >escritura
# << agregar escritura al final

#semicolumnToComma();
#exit;

#Leyendo/moviendo por el archivo

while (my $row = <$fh>) {
  #print "$row\n"; 
  if ($row =~ /Scheduled start/ & $row !~ /\d{4}\-*\/*\d+\-*\/*\d+/) 

  { 
    #print "primer linea\n";
    next;
  }

   #Utilizando expresión regular #d*= 0 o mas veces.
  @tempLine = split(';', $row);
  my $size = @tempLine;
  #print Dumper \@tempLine;<STDIN>;
  if ($size != 17){print "\nCheck data consistency!\n$row"; print "\nSize $size"; next;}
  
  $start = $tempLine[0];
  $duration = $tempLine[2];
  $organization = $tempLine[10];  
  $email = $tempLine[12];  
  $space = $tempLine[16];
  chomp($space);
  
  if ($start =~ /(\d+)\-*\/*(\d+)\-*\/*(\d+)\s/) #\s=espacio
  {
    $year=$1; $month=$2; $day=$3;
    if ($day>31)
    {
     print "año $year mes $month dia $day";
      
      my  $temp = $year;

      $year = $day;
      $day=$temp;
       print "año $year mes $month dia $day";
      #<STDIN>;
    
    }

 }




  #Si la organización es Impactico, agrego el correo info@impactico.org. Este field viene en blanco por el momento.
  if ($organization =~ /Impactico/){$email="info\@impactico\.org"; }
  print "\n INFORMACION $start $duration $organization $email $space año $year mes $month dia $day\n";

  if ($summary1{$year}{$month}{$space}{$organization}){
     #print "\nEmail is already in! \nYear: $year, Month: $month, Space: $space, Email: $email\nGetting duration... $summary1{$year}{$month}{$space}{$email}\n"; 
     $cumDuration = $summary1{$year}{$month}{$space}{$organization};
     my $tempDuration = $duration + $cumDuration;
     #print "\nPrevious: $duration New: $tempDuration";
     $duration = $tempDuration;     
  }
  $summary1{$year}{$month}{$space}{$organization}=$duration;
  #if ($month == 7){print Dumper \%summary1; <STDIN>;}  
}

close $fh;

## Print the hash in a readable format
print $fh2 "Año;Mes;Espacio;Cliente;Duracion\n";
for my $k1 (sort keys %summary1){
   for my $k2 (sort keys %{$summary1{$k1}}){
      for my $k3 (sort keys %{$summary1{$k1}{$k2}}){
         for my $k4 (sort keys %{$summary1{$k1}{$k2}{$k3}}){
	    print $fh2 "$k1;$k2;$k3;$k4;";
            my $string = $summary1{$k1}{$k2}{$k3}{$k4};
            print $fh2 "$string\n"; 
        
        



   	 }
      }
   }
}
close $fh2;
exit;

########### Subroutines ###########

#Daniel: por default el CSV generado por Skedda usa ";" en vez ",", el siguiente código hace el cambio de caracteres --> Compatibilidad Excel Inglés
#Daniel: se puede agregar un switch como parámetro de entrada, para ver si se ejecuta esta parte o no
sub semicolumnToComma {
  my $filename = 'bookingsReprocessed.csv';
  open(my $temp, '>', $filename) or die "Could not open file '$filename' $!";
  while (my $row = <$fh>) { 
     $row =~ s/,/DUMMYTEMPCHARACTERDANIEL/g;
     $row =~ s/;/,/g;
     $row =~ s/DUMMYTEMPCHARACTERDANIEL/;/g;
     print $temp "$row";
  }
  close $temp;
  close $fh;
}


###### File Headers #####

#1   #Scheduled start: 2015-06-17 13:00
#2   #End
#3   #Duration (minutes)
#4   #Spaces count
#5   #Type
#6   #Title
#7   #Price
#8   #Payment status
#9   #Holder first name
#10  #Holder last name
#11  #Holder organization
#12  #Holder contact number
#13  #Holder email
#14  #Created	
#15  #Notes
#16  #Gateway charge reference	
#17  #Spaces


#Hash:
#Año
#	Mes
#		Espacio
#			Usuario
#				Duración Total
#
