gcc filter.c

flex virus_patterns.l

gcc -o scanner lex.yy.c -lfl

./a.out < infected-target02.exe | ./scanner
