#!/usr/bin/perl -w
open IN,"<$ARGV[0]";
open OUT,">motif_loc_smrt.txt";
while (<IN>){
	chomp;
	while(/(GAAG(\w){8}TAC)|(GTA(\w){8}CTTC)/g){
		$end=pos $_;
		$start=$end-15+1;
		print OUT "$start\t$end\n";
	}
}

close IN;
close OUT;
