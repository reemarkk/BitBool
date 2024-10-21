#include <stdio.h>

typedef char BitBool;

int getbit(BitBool object , int index ){
    if( index < 0 || index >= 8){
        printf("Index out of range.\n");
        return -1;
    }
    return (object>>index) & 1;
    // >> 'number' right by 'index' to bring the target bit to the rightmost position
    // & with 1 to isolate that bit and return its value
    // if bit = 1, 1 & 1 = 1
    // if bit = 0, 1 & 0 = 0
}

void setbit(BitBool* object , int index, int newbit){
    if( index < 0 || index >= 8){
        printf("Index out of range.\n");
        return;
        }
    *object= (*object & ~(1<<index)) | (newbit * (1<<index));
    //1001 2 -> 1 0100 1011 1001  0100 1101
    
    // If newbit is 1, sets the bit at index to 1 with | bitwise operator.
    // If newbit is 0, sets the bit at index to 0 with & and ~ bitwise operator.
}

int main(void){
    BitBool myobj;
    myobj = 7;
    setbit(&myobj, 13, 1);
    setbit(&myobj, 2, 0);
    setbit(&myobj, 1, 1);
    setbit(&myobj, 7, 1);
    
    printf("%d\n", getbit(myobj, 1));
    printf("%d\n", getbit(myobj, 13));
    printf("%d\n", getbit(myobj, 2));
    printf("%d\n", getbit(myobj, 7));
return 0;
}
