#include <stdio.h>
#define BUFSIZE 5516
int main(int argc, char **argv) {
	if (argc != 3) {
		printf("Please use the right no. of inputs\n");
		return 0;
	}
	FILE *fp, *wfp;
	char buff[BUFSIZE];
	int i;
	
	fp = fopen(argv[1], "r");
	wfp = fopen(argv[2], "w");
	for (i = 0; i < BUFSIZE; i++) {
		buff[i] = fgetc(fp);
	}
	
	//actual tricky jump here
	buff[1104] = '\xe8';
	buff[1105] = '\x18';
	buff[1106] = '\x00';
	buff[1107] = '\x00';
	buff[1108] = '\x00';
	buff[1109] = '\x00';
	buff[1110] = '\xc3';
	
	for (i = 0; i < BUFSIZE; i++) {
		fputc(buff[i], wfp);
	}
	fclose(fp);
	fclose(wfp);
	return 0;
}
