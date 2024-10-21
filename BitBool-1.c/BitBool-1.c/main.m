#include <stdio.h>

typedef struct BitBool{
    char number;
} BitBool;

int getbit(BitBool *object , int index ){
    if( index < 0 || index >= 8){
        printf("Index out of range.\n");
        return -1;
    }
    return (object->number >>index) & 1;
}

void setbit(BitBool* object , int index, int newbit){
    if( index < 0 || index >= 8){
        printf("Index out of range.\n");
        return;
    }
    if(newbit){
        object->number |= (1<<index);
    }
    else {
        object -> number &= ~(1<<index);
    }
}

int main(void){
    BitBool myobj;
    myobj.number = 7;
    setbit(&myobj, 13, 1);
    setbit(&myobj, 2, 0);
    setbit(&myobj, 1, 1);
    setbit(&myobj, 7, 1);
    
    printf("%d\n", getbit(&myobj, 1));
    printf("%d\n", getbit(&myobj, 13));
    printf("%d\n", getbit(&myobj, 2));
    printf("%d\n", getbit(&myobj, 7));

return 0;
}
