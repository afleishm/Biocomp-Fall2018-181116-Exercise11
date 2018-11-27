#creat HMM profile
/afs/nd.edu/user39/afleishm/local/bin/hmmbuild trans.hmm trans.align

#search for proteomes
for i in ../proteomes/*.fasta
	do
	/afs/nd.edu/user39/afleishm/local/bin/hmmsearch --tblout trans.hits trans.hmm $i
	x=`cat trans.hits | grep -v "#" | wc -l` #assign variable to keep track of hits
	echo $i,$x >> hits.txt #store hits and file names to a file
	done

	
