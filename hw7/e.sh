gcc infect.c

./a.out target_code.bin infected_target_code.bin

/bin/chmod a+x infected_target_code.bin

./infected_target_code.bin

objdump -d infected_target_code.bin > infected.txt
