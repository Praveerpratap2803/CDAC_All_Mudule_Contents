#include<iostream>
using namespace std;
int main(){
    int length,arr[100],max=INT32_MIN,min=INT32_MAX;
    cout<<"Enter the size of an array";
    cin>>length;
    for(int i=0;i<length;i++){
        cin>>arr[i];
    }
    cout<<"Your array values are";
    for (int i=0;i<length;i++){
        cout<<arr[i];
    }
    for (int i=0;i<length;i++){
        if(arr[i]<min){
            min=arr[i];
        }
    }
    for (int i=0;i<length;i++){
        if(arr[i]>max){
            max=arr[i];
        }
    }
    cout<<"Minimum and Maximum value of the array are "<<min<<" "<<max;
    return 0;
}