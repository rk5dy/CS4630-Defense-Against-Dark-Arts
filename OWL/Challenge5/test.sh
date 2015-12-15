#unzip tar stuff before executing this
gcc -m32 -o attack_spell5.bin attack_spell5.c
./attack_spell5.bin > attack_spell5.txt
./challenge5.bin < attack_spell5.txt
