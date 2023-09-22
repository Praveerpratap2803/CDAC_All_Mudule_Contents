// 4. Write a program to calculate factorial of a
// number. For e.g. factorial of 5 = 5! = 5
// *4*3*2*1 = 120

#include<iostream>
using namespace std;
int main(){
    int n,result=1,number;
    cout<<"Enter a number";
    cin>>n;
    number = n;
    while(n>0){
        result = result*n;
        n--;
    }
    cout<<"Factorial of "<<number<<" is "<<result;
    return 0;
}

