// 2. Write a program to accept two integers x and n and compute x raised to n.

#include<iostream>
using namespace std;
int main(){
    int x,n,result=0;
    cout<<"Enter two number";
    cin>>x>>n;
    while(n>=1){
        result = x*x + result;
        n--;
    }
    cout<<x<<" raised to "<<n<<" is "<<result;
    return 0;
}

