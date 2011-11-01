
use strict;
use Data::Dumper;
open (FILE, "situatie.txt") or die $!; #deschidere in mod citire.
my $c=0;
my $d=0;
my $s2=0;
my $nume=0;
my $prenume1 = 0;
my $prenume2 = 0;
my $nota=0;
my $ref_array = [];
my $ref_hash1=[];
my $ref_hash2=[];
while (my $linie = <FILE>) 
	{
		my @list = split(" ",$linie);
		$nume  = uc substr @list[0], 4;
		if (scalar(@list) > 1 )
		{
		my @prenume_list = split("-",@list[1]);
		if (scalar(@prenume_list) < 1 )
		{
		substr(@list[1], 0,1,uc substr(@list[1],0,1));
	        $prenume1 = @list[1];
		}	  
		else
		{
		 substr(@prenume_list[0], 0,1,uc substr(@prenume_list[0],0,1));
		 substr(@prenume_list[1], 0,1,uc substr(@prenume_list[1],0,1));
		$prenume1 = @prenume_list[0];
		$prenume2 = @prenume_list[1];		
		}
		}
		my @list_nota = split("- ",$linie);
		if (substr(@list_nota[1],1,1) eq "<")
			{$nota = substr(@list_nota[1],0,1);} 
		else
			{$nota = substr(@list_nota[1],0,1);} 
if($prenume2 eq "")
{
  $ref_hash2={'nume'=>$nume,
	      'prenume'=>$prenume1,
	      'nota'=>$nota,};
push @{$ref_array},$ref_hash2;
}
else
{

  $ref_hash1={'nume'=>$nume,
	      'prenume'=>[$prenume1,$prenume2],
	      'nota'=>$nota,};
push @{$ref_array},$ref_hash1;
}
	}
print Dumper($ref_array);
close(FILE);
