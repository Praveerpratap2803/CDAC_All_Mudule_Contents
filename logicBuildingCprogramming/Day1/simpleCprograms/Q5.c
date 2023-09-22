// 5.Accept two numbers and swap two numbers using
// i) Third variable
// ii) By performing arithmetic operations.

#include<stdio.h>
int main(){
    int number1,number2,temp;
    scanf("%d%d",&number1,&number2);
    printf("number1 is %d and number2 is %d \n",number1,number2);
    temp = number1;
    number1 = number2;
    number2 = temp;
    printf("After Swapping number1 is %d and number2 is %d",number1,number2);

}


