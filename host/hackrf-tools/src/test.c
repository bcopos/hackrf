
#include <stdlib.h>
#include <stdio.h>

void foo(char s) {
   printf("%s\n", s);
}

int main() {
    char *s = "hi";
    foo(s);
    return 0;
}
