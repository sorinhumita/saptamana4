
use strict;

open (FILE, "situatie1.txt") or die $!; #deschidere in mod citire.
my $c=0;
my $d=0;
my $s2=0;
my $nume=0;
while (my $linie = <FILE>) 
	{
		my @list = split(" ",$linie);
		$nume  = substr @list[0], 4;
		print uc $nume." ";
		if (scalar(@list) > 1 )
		{
		my @prenume_list = split("-",@list[1]);
		if (scalar(@prenume_list) < 1 )
		{
		substr(@list[1], 0,1,uc substr(@list[1],0,1));
		print @list[1]; 
		}	  
		else
		{
		 substr(@prenume_list[0], 0,1,uc substr(@prenume_list[0],0,1));
		 substr(@prenume_list[1], 0,1,uc substr(@prenume_list[1],0,1));
		 print @prenume_list[0]." ".@prenume_list[1];	
		}
		}
		my @list_nota = split("- ",$linie);
		if (substr(@list_nota[1],1,1) eq "<")
			{print " ".substr(@list_nota[1],0,1)."\n";} 
		else
			{print " ".substr(@list_nota[1],0,2)."\n";} 
	
	}
close(FILE);
