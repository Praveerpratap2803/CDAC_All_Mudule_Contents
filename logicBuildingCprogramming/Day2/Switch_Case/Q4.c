// Q4.Accept radius from the user and write a program having menu with the following
// options and corresponding actions:
// Options Actions
// 1. Area of Circle
// 2. Circumference of Circle
// 3. Volume of Sphere

#include<stdio.h>
#include<math.h>
#define pi 3.14
int main(){
    int option;
    float radius,area,circumference,volume;
    printf("Enter a radius and option \n");
    scanf("%f %d",&radius,&option);
    area = pi*radius*radius;
    circumference = 2*pi*radius;
    volume = (4.0/3.0)*pi*pow(radius,3);
    switch (option)
    {
    case 1:
        printf("Area of circle of radius %f is %f",radius,area);
    break;
    case 2:
        printf("Circumference of circle of radius %f is %f",radius,circumference);
    break;
    case 3:
        printf("Volume of circle of radius %f is %f",radius,volume);
    break;
    
    default:
        break;
    }
}

