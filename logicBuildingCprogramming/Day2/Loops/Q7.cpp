// 7. Write a menu driven program to do following operations :
// a)Compute area of circle
// b) Compute area of rectangle
// c)Compute area of triangle
// d) Exit
// Display menu, ask choice to the user, depending on choice accept the parameters and
// perform the operation. Continue this process until user selects exit option.

#include<iostream>
#include<cmath>
using namespace std;
#define pi 3.14
int main(){
    char choice;
    do{
        if(choice=='d'){
            break;
        }else{
            cout<<"Select the operation a)Compute area of circle b) Compute area of rectangle c)Compute area of triangle d) Exit";
            cin>>choice;
            if(choice=='a'){
                int radius;
                cout<<"\nEnter the radius of a circle";
                cin>>radius;
                cout<<"Area of circle of radius "<<radius<<" is "<<pi * pow(radius,2)<<endl;
                
            }else if(choice=='b'){
                int length,breadth;
                cout<<"Enter the length and breadth of a rectange";
                cin>>length>>breadth;
                cout<<"Area of rectange of length and breadth "<<length <<"and"<<breadth<<" is "<<length*breadth<<endl;
                
            }else if(choice=='c'){
                int base,height;
                cout<<"Enter the base and height of a triangle";
                cin>>base>>height;
                cout<<"Area of triangle of base and height "<<base <<"and"<<height<<" is "<<base*height/2<<endl;
                
            }
            
        }
    }while(choice=='a'|| choice=='b' || choice=='c' || choice=='d');
    return 0;
}



