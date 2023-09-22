// 6. Write a C program to check whether a entered character is uppercase or lowercase alphabet.



#include<stdio.h>
int main(){
    char character;
    printf("Enter a character");
    scanf("%c",&character);
    if(character >=65 && character<=90){
        printf("%c is uppercase",character);
    }else{
        printf("%c is lowercase",character);
    }
}
