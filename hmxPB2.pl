#use warnings;
use strict;

open (FILE, "ZteAutofindTelnet.log") or die $!; #deschidere in mod citire.
my $c=0;
my $d=0;
my $s2=0;
my $s=0;
while (my $linie = <FILE>) 
	{
		$c++;
		print "linia nr : ".$c."\n";
		if ( $c >= 7 )
		{ 		
		  my @list = split("/",$linie);
		  $s  = substr @list[2], 0, 1;
		if (scalar(@list[1]) <= 9)
		{
		  $s2  = substr @list[2],16, 8;
		}
		else
		{
		  $s2  = substr @list[2],15, 8;
		}			
		  print @list[1]." ".$s." ".$s2."\n";	
		}
	}
print "numarul de cuvinte din fisier este : ".$c ."\n";
close(FILE);
