/*
Rock Beom Kim rk5dy
*/
%{
#include <stdio.h>
#include <string.h>

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
.. 	{
//printf("%s", yytext);
//printf("\n");
char_read ++; 
}

%%

int main() {
	yylex();
	return 0;
}
