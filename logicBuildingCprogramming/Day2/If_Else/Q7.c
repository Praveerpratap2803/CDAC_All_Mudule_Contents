// 7. Write a C program to accept a character and invert the case of it.

#include<stdio.h>
int main(){
    char character;
    printf("Enter a character");
    scanf(" %c",&character);
    printf("\n Your charcter is = %c",character);
    if(character >=65 && character<=90){
        character = character + 32;
        printf("in inverted case = %c",character);
    }else if(character>=90 && character<=122){
        character = character - 32;
        printf("inverted case is = %c",character);
    }
    else{
        printf("\n It is not a charcter");
    }
}


