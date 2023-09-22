// 1. Write a program that accepts numbers continuously as long as the number is positive and
// prints the sum of the given numbers.

#include<iostream>
using namespace std;
int main(){
    int number,sum=0;
    while(1){
        cin>>number;
        if(number>0){
            sum += number;
        }else{
            break;
        }
    }
    cout<<"Result is "<<sum;
    return 0;
}

