#include <stdio.h>

int main() {
    char string[255];
    int char_count=0;
    int c;

    while((c = getchar()) != '\n') {
        string[char_count++] = c;
    }
    
    int i = 0;

    for(i = 0; i < char_count; i++) {
        printf("%c", string[i]);
    }
}
