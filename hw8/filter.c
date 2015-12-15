/**
Rock Beom Kim rk5dy
*/
#include <stdio.h>

int main(int argc, char **argv) {
	int c;
	
	while ((c = fgetc(stdin)) != EOF) {
		printf("%02x", c);	
	}
	
	return 0;
}
