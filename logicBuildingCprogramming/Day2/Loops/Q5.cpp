// 5. Write a program to calculate factors of a given number.

#include<iostream>
using namespace std;
int main(){
    int n,count=1;
    cout<<"Enter a number";
    cin>>n;
    while (count<=n/2)
    {
        if(n%count==0){
            cout<<count<<" ";
        }
        count++;
    }

}
