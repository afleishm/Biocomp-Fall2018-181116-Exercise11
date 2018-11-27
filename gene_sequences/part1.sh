#usage: bash part1.sh (all the sporecoat and then transformation files)
for i in $1 $2 $3 $4
	do
	cat $i >> spore.fasta
	echo \n >> spore.fasta
	done

for i in $5 $6 $7 $8
	do
	cat $i >> trans.fasta
	echo \n >> trans.fasta
	done

#align spores
../muscle3.8.31_i86linux64 -in spore.fasta -out spore.align

#align transporters
../muscle3.8.31_i86linux64 -in trans.fasta -out trans.align
