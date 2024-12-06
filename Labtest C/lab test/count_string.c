#include <stdio.h>

int main() {
    char s[200],s1[200];
    scanf("%s",s);
    int i;

    // Copying source to destination
    for (i = 0; s[i] != '\0'; ++i) {
        s1[i] = s[i];
    }
    s1[i] = '\0'; 

    
    printf("Copied string: %s\n", s1);
    printf("Number of characters copied: %d\n", i);

    return 0;
}
