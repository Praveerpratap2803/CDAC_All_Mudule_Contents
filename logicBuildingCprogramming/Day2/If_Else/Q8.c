// 8.Write a program to accept 3 numbers and compute minimum and maximum from them

#include<stdio.h>
int main(){
    int number1,number2,number3;
    printf("Enter three numbers");
    scanf("%d%d%d",&number1,&number2,&number3);

    if(number1>number2 && number1>number3){
        printf(" %d is maximum ",number1);
    }else if(number1<number2 && number1<number3){
        printf(" %d is minimum ",number1);
    }
    if(number2>number1 && number2>number3){
        printf(" %d is maximum ",number2);
    }else if(number2<number1 && number2<number3){
        printf(" %d is minimum ",number2);
    }
    if(number3>number2 && number3>number1){
        printf(" %d is maximum ",number3);
    }else if(number3<number2 && number3<number1){
        printf(" %d is minimum ",number3);
    }

}
