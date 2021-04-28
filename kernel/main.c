#include <stdio.h>
 
#include <kernel/tty.h>
 
void main(void) {
	terminal_initialize();
	printf("Welcome to DFC OS!\n");
}
