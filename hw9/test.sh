gcc infect.c 

./a.out target_code.bin infected_target_code.bin

objdump -d infected_target_code.bin > data.txt

gcc filter.c

flex virus_patterns.l

gcc -o scanner lex.yy.c -lfl

./a.out < infected_target_code.bin | ./scanner
