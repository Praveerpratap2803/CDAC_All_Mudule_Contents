// 6.Accept dimensions of a cylinder and print the surface area and volume (Hint: surface area = 2πr
// 2 +2πrh, volume = π r 2 h). Define a constant variable pi=3.14.

#include<stdio.h>
#define pi 3.14
int main(){
    float radius,height,surfaceArea,volume;
    printf("Enter radius and height");
    scanf("%f%f",&radius,&height);
    surfaceArea = 2 * pi * (radius*radius) + 2 * pi * radius * height;
    volume = pi * radius * radius * height;
    printf("Surface Area , %f, Volume , %f",surfaceArea,volume);
}


