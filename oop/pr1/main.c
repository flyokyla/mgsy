// gcc -c main.c
// gcc -c func.c
// gcc main.o func.o -o app

#include "func.h"
int main(void){
	func(10);
	return 0;
}
