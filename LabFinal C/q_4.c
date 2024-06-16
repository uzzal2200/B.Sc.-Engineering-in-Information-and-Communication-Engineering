#include <stdio.h>

int main() {
    int larg1, larg2, larg3;
    scanf("%d%d%d", &larg1,&larg2,&larg3);
    if (larg2 > larg1) {
        int temp = larg1;
        larg1 = larg2;
        larg2 = temp;
    }
    if (larg3 > larg1) {
        int temp = larg1;
        larg1 = larg3;
        larg3 = temp;
    }
    if (larg3 > larg2) {
        int temp = larg2;
        larg2 = larg3;
        larg3 = temp;
    }
    printf(" %d, %d, %d\n", larg1, larg2, larg3);

    return 0;
}
