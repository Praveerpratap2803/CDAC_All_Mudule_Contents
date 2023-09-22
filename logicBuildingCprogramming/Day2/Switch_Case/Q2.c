// 2.Write a program, which accepts two integers and an operator as a character (+ - * / ),
// performs the corresponding operation and displays the result.

#include<stdio.h>
int main(){
    int number1,number2,result;
    char operator;
    printf("Enter two number and an operator among +,-,*,/ ");
    scanf("%d %d %c",&number1,&number2,&operator);
    switch(operator){
        case '+':
            result = number1 + number2;
            printf("Addition is %d",result);
            break;
        case '-':
            result = number1 - number2;
            printf("Sunstraction is %d",result);
            break;
        case '*':
            result = number1 * number2;
            printf("Multiplication is %d",result);
            break;
        case '/':
            result = number1 / number2;
            printf("Division is %d",result);
            break;
        default:
            printf("Please enter among +,-,*,/");
    }
}