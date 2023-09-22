// 6. Accept two numbers and calculate GCD of them.
#include<iostream>
using namespace std;
int main(){
    int number1,number2,count;
    cout<<"Enter two number";
    cin>>number1>>number2;
    if(number1>number2){
        count = number2;
    }else{
        count = number1;
    }
    while(count>0){
        if(number1%count==0 && number2%count == 0){
            cout<<"GCD of "<<number1<<" "<<number2<<" is "<<count;
            break;
        }
        count--;
    }
}
