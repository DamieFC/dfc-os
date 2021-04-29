#include <panic.h>

void kpanic(void){
    writestring(">-----PANIC-----<");
    writestring("Something happened. Idk what.");
    return(1);
}
