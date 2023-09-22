// 4. Accept a lowercase character from the user and check whether the character is a vowel or
// consonant. (Hint: a, e, i, o, u are vowels)
#include<stdio.h>
int main(){
    char character;
    int ascii;
    printf("Enter a character");
    scanf("%c",&character);
    ascii = character;
    // printf("%d",ascii);
    if(!(ascii >=97 && ascii<=122)){
        printf("Enter a lowercase character");
        exit(0);
    }
    if(character=='a' || character=='e' || character=='i' || character=='o' || character=='u' ){
        printf(" %c is a vowel",character);
    }else{
        printf(" %c is a consonent",character);
    }
}


