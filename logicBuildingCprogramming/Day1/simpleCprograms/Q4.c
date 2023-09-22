// 4.Accept the basic salary of an employee and compute the net salary after adding earnings and
// subtracting deductions.
// PF is 2 % of
// basic Tax is 3 %
// of basic HRA is
// 5 % basic DA is
// 8 % of basic

#include<stdio.h>
int main(){
    float basicSalary,netSalary,pfCalculation,taxCalculation,hraCalculation,daCalculation;
    printf("Enter Basic Salary");
    scanf("%f",&basicSalary);
    pfCalculation = (2/100.0) * basicSalary;
    taxCalculation = (3/100.0) * basicSalary;
    hraCalculation = (5/100.0) * basicSalary;
    daCalculation = (8/100.0) * basicSalary;
    printf("pf is %f",pfCalculation);
    netSalary = basicSalary - pfCalculation -taxCalculation + hraCalculation + daCalculation;
    printf("Net Salary is %f",netSalary);
}


