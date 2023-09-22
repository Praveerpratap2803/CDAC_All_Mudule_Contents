// 2.Write a program to accept a number and check if it is divisible by 5 and 7.
#include<stdio.h>
int main(){
    int number;
    printf("Enter the number");
    scanf("%d",&number);
    if(number%5==0 && number%7==0){
        printf("%d is divisible by 5 and 7.",number);
    }else{
        printf("%d is not divisible by 5 and 7.",number);
    }

}

