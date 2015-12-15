// target-code.cpp : Defines the entry point for the application to infect	
//

#include <stdio.h>

void InitializeApplication();
void StartApplication();
void TerminateApplication();
int main(int argc)
{
        int i;

        /* Initialize application */
        InitializeApplication();
        /* Now call main application function */
        StartApplication();
	/* Now terminate the application */
	TerminateApplication();
        return 0;
}
