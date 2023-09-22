// 5. Write a C program to input angles of a triangle and check whether triangle is valid or not.


#include<stdio.h>
int main(){
    int angle1,angle2,angle3,sumOfAngleOfTrangle;
    printf("Enter angle of a triangle");
    scanf("%d%d%d",&angle1,&angle2,&angle3);
    sumOfAngleOfTrangle = angle1 + angle2 + angle3;
    if(sumOfAngleOfTrangle >180){
        printf("Invalid angles of a triangle");
    }else{
        printf("Valid angles of a triangle");
    }
    
}
