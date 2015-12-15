
#include <stdio.h>
#include <sys/mman.h>
#include <string.h>
#include <stdlib.h>

enum {BUFSIZE = 98};

int completed  = 0;
char Name[BUFSIZE];
FILE *f;

void readString(char *s) {
   char buf[BUFSIZE];
   int i = 0; 
   int c;

   for (;;) 
   {
      c = getchar();
      if ((c == EOF) || (c == '\n')) 
         break;
      buf[i] = c;
      i++;
   }
   buf[i] = '\0';

   for (i = 0; i < BUFSIZE; i++) 
      s[i] = buf[i];
}


void message(int val) {
   if (val != 0) {
      printf("Congratulations, you have completed this challenge.\n");
   } else {
      printf("Unfortunately, you have not completed this challenge. Try again.\n");
   }
}
int main(void) 
{
   mprotect((void*)((unsigned int)Name & 0xfffff000), 1,
            PROT_READ | PROT_WRITE | PROT_EXEC);
   readString(Name);
   printf("Thank you, %s.\n", Name);

   message(completed);
   printf("Exiting\n");
   exit(0);
}

