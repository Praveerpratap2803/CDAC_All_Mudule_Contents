// 3.Accept marks of 5 subjects (out of 100) of a student and display total marks and
// compute the percentage also.

#include<stdio.h>
int main(){
    int maths,english,hindi,science,sst,totalMarks;
    float percentage;
    printf("Enter marks of maths,english,hindi,science,sst");
    scanf("%d%d%d%d%d",&maths,&english,&hindi,&science,&sst);
    totalMarks = maths+english+hindi+science+sst;
    percentage = (totalMarks / 500.0 )*100;
    printf("Total Marks is %d and percentage is %f",totalMarks,percentage);

}


