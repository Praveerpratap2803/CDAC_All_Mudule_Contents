// 3.Write a program, which accepts annual basic salary of an employee and calculates and
// displays the Income tax as per the following rules.
// Basic: < 1, 50,000 Tax = 0
// 1, 50,000 to 3,00,000 Tax = 20%
// > 3,00,000 Tax = 30%
#include<stdio.h>
int main(){
    int salary;
    float incomeTax;
    printf("Enter the basic salary");
    scanf("%d",&salary);
    if(salary<50000){
        incomeTax = 0;
        printf("Income tax is %d",incomeTax);
    }else if(50000>=salary && salary<300000){
        incomeTax =(salary*20)/100;
        printf("Income tax is %f",incomeTax);
    }else{
        incomeTax = (30/100.0) * salary;
        printf("Income tax is %f",incomeTax);
    }
}


