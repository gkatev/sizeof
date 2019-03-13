#include <stdio.h>

#include <stdint.h>
#include <stdbool.h>
#include <pthread.h>
#include <semaphore.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <termios.h>
#include <arpa/inet.h>
#include <errno.h>

#define _STRINGIFY(s) #s
#define STRINGIFY(s) _STRINGIFY(s)

#ifndef TYPE
#error TYPE is not defined
#endif

int main(void) {
	size_t size = sizeof(TYPE);
	printf("sizeof(%s) = %zu\n", STRINGIFY(TYPE), size);
	
	return 0;
}
