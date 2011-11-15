
use strict;

open (FILE, "situatie.txt") or die $!; #deschidere in mod citire.
while (my $linie = <FILE>) 
	{
	chomp($linie);
	if ( $linie =~ m/^<li>(\w+)\s+([a-z ]+).+(\d+)$/ ) {
	print "$linie\t\t--> $1 +++ $2 +++ $3 \n";
#	$1 - prima paranteza 
#	$2 - a doua paranteza 
#	tot asa
	}
	}
	
	
