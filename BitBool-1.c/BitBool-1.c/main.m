#include <stdio.h>

typedef char BitBool;

int getbit(BitBool object, int index){
    if(index < 0 || index >= 8){
        printf("Index out of range.\n");
        return -1;
    }
    return (object >> index) & 1;
// >> by 'index' to bring the target bit to the rightmost position, & with 1 to isolate that bit
}

void setbit(BitBool* object , int index, int value){
    if( index < 0 || index >= 8){
        printf("Index out of range.\n");
        return;
        }
    
    *object= (*object & ~(1<<index)) | ((value  & 1)* (1<<index));
//sets the last bit of value at index to 1 with | bitwise operator and sets the last bit of value at index to 0 with & and ~ bitwise operator.
}

int main(void){
    BitBool myobj;
    myobj = 1;
    //setbit(&myobj, 13, 1);
    setbit(&myobj, 2, 0);
    setbit(&myobj, 2, 1);
    setbit(&myobj, 7, 1);
    
    printf("%d\n", getbit(myobj, 1));
    //printf("%d\n", getbit(myobj, 13));
    printf("%d\n", getbit(myobj, 2));
    printf("%d\n", getbit(myobj, 7));
return 0;
}
