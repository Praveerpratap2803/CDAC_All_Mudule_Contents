// 5.Write a program having menu that has three options - add, subtract or multiply two fractions.
// The two fractions and the options are taken as input and the result is displayed as output. Each
// fraction is read as two integers, numerator and denominator.

#include<stdio.h>
#define pi 3.14
int main(){
    int option;
    float numerator1,numerator2,denominator1,denominator2,result,finalNumerator,finalDenomenator;
    printf("Enter numerator1,numerator2,denominator1,denominator2,option");
    scanf("%f %f %f %f %d",&numerator1,&denominator1,&numerator2,&denominator2,&option);
    switch (option)
    {
    case 1:
        finalNumerator = numerator1*denominator2 + numerator2*denominator1;
        finalDenomenator = denominator1*denominator2;
        result = finalNumerator/finalDenomenator;
        printf("Addition of fraction %f/%f and %f/%f is %f",numerator1,denominator1,numerator2,denominator2,result);

        break;
    case 2:
        finalNumerator = numerator1*denominator2 - numerator2*denominator1;
        finalDenomenator = denominator1*denominator2;
        result = finalNumerator/finalDenomenator;
        printf("Substraction of fraction %f/%f and %f/%f is %f",numerator1,denominator1,numerator2,denominator2,result);

        break;
    case 3:
        finalNumerator = numerator1*numerator2;
        finalDenomenator = denominator1*denominator2;
        result = finalNumerator/finalDenomenator;
        printf("Multiplication of fraction %f/%f and %f/%f is %f",numerator1,denominator1,numerator2,denominator2,result);

        break;
    
    default:
        printf("Please enter valid option");
        break;
    }

}



