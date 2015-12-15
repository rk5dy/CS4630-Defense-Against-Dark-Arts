/*
Rock Beom Kim rk5dy
*/
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int char_read = 1;

%}

HEX [0-9a-f]

%%

68{HEX}{8}c3 {
	printf("WARNING! Tricky Jump: byte number: %d", char_read);
	printf("\n");
	printf("%s", yytext);
	printf("\n");
	char_read += 6;	
}
bc{HEX}{2}06000031363126 {
	printf("WARNING! Wahoo Virus: byte number: %d", char_read);
	printf("\n");
	printf("%s", yytext);
	printf("\n");
	char_read += 8;
}
bc{HEX}{2}05000031363126 {
	char cpy[3];
	int val;
	cpy[0] = yytext[2];
	cpy[1] = yytext[3];
	cpy[2] = '\0';
	val = atoi(cpy);
	if (val >= 78) {
		printf("WARNING! Wahoo Virus: byte number: %d", char_read);
		printf("\n");
		printf("%s", yytext);
		printf("\n");	
	}
	char_read += 8;
}
bc{HEX}{2}07000031363126 {
	char cpy[3];
	int val;
	cpy[0] = yytext[2];
	cpy[1] = yytext[3];
	cpy[2] = '\0';
	val = atoi(cpy);
	if (val <= 54) {
		printf("WARNING! Wahoo Virus: byte number: %d", char_read);
		printf("\n");
		printf("%s", yytext);
		printf("\n");	
	}
	char_read += 8;
}
.. 	{
char_read ++; 
}

%%

int main() {
	yylex();
	return 0;
}
