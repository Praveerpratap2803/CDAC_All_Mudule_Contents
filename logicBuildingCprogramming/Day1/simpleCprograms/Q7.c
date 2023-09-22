// 7. Accept temperatures in Fahrenheit (F) and print it in Celsius(C) and Kelvin (K) (Hint: C=5/9(F32), K = C + 273.15)

#include<stdio.h>
int main(){
    float fehrenheit,celsius,kelvin;
    scanf("%f",&fehrenheit);
    celsius = (5/9.0)*(fehrenheit-32);
    kelvin = celsius + 273;
    printf("Celsius and Fahrenheit are %f %f",celsius,kelvin);
}


