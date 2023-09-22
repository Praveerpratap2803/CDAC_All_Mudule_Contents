// 3. Write a program to accept a character, an integer n and display the next n characters.

#include<iostream>
using namespace std;
int main(){

    char character;
    int n;
    cout<<"Enter a character and n to display the next n character";
    cin>>character>>n;
    while (n>0)
    {
        cout<<character;
        character++;
        n--;
    }
    
    return 0;
}

