// Q3.Accept two numbers in variables x and y from the user and perform the following operations
// Options Actions
// 1. Equality Check if x is equal to y
// 2. Less Than Check if x is less than y
// 3. Quotient and Remainder Divide x by y and display the
// quotient and remainder
// 4. Range : Accept a number and check if it lies between x and y (both inclusive)
// 5. Swap : Interchange x and y

#include<stdio.h>
int main(){
    int x,y,operation, number, temp;
    printf("Enter two number x and y, and operation actions \n1. Equality Check if x is equal to y \n2. Less Than Check if x is less than y \n3. Quotient and Remainder Divide x by y and display the quotient and remainder \n4. Range : Accept a number and check if it lies between x and y (both inclusive) \n5. Swap : Interchange x and y \n");
    scanf("%d %d %d",&x,&y,&operation);
    int Quotient = x/y, Reminder = x%y;
    switch(operation){
        case 1:
            if(x==y)
                printf("%d and %d are equal",x,y);
            else
                printf("%d and %d are not equal",x,y);
            break;
        case 2:
            if(x<y)
                printf("%d is less than %d ",x,y);
            else
                printf("%d is not less than %d ",x,y);
            break;
        case 3:
            printf(" Quotient and Reminder of %d %d are %d and %d",x,y,Quotient,Reminder);
            break;
        case 4:
            printf("Enter a number");
            scanf("%d",&number);
            if(x<y)
                if(x <= number && number <= y)
                    printf("%d lies between %d and %d (both inclusive)",number,x,y);
                else
                    printf("%d not lies between %d and %d (both inclusive)",number,x,y);
            else
                if(x >= number && number >= y)
                    printf("%d lies between %d and %d (both inclusive)",number,x,y);
                else
                    printf("%d not lies between %d and %d (both inclusive)",number,x,y);
            break;
        case 5:
            temp = x;
            x = y;
            y = temp;
            printf("%d is x and %d is y ",x,y);
            break;
        default:
            printf("Please enter from given number");
    }

}

