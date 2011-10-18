use warnings;
use strict;

open (FILE, "lucrare.txt") or die $!; #deschidere in mod citire.
my $c=0;

while (my $linie = <FILE>) 
	{
		@list = split(" ",$linie);
		$c = $c + scalar( @list );
	}
print "numarul de cuvinte din fisier este : ".$c ."\n";
close(FILE);
