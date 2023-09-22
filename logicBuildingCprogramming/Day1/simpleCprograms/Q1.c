// 1.Accept the radius from user and compute the area and circumference of a circle.

#include<stdio.h>
int main(){
    int radius;
    float area,circumference;
    scanf("%d",&radius);
    area = 3.14*radius*radius; // not able to use ^ ??
    circumference = 2 * 3.14 * radius;
    printf("Area of circle is %f and Circumference is %f",area,circumference);
}


