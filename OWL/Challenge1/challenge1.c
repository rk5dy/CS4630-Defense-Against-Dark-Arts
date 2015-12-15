
#include <stdio.h>
#include <sys/mman.h>
#include <string.h>
#include <stdlib.h>

enum {BUFSIZE = 98};

int Completed = 0;
char Name[BUFSIZE];
FILE *f;
int i = 0;

void readString(char *s) {
   int c;
   char buf[BUFSIZE];

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


int main(void) {
   readString(Name);

   if (!Completed) 
     printf("%s: You have not completed this challenge. Try again.\n", Name);
   else
     printf("%s: Congratulations, you have completed this challenge!\n", Name);

   exit(0);
}

