#include<iostream>
using namespace std;
#include<stdio.h>

inline void add()
{
    int a,b;

    cout<<"A = ";
    cin>>a;

    cout<<"B = ";
    cin>>b;

    cout << "sum of" << a <<"and" << b <<"=" << a+b << endl;

}

inline void mul()
{
     int a,b;

    cout<<"A = ";
    cin>>a;

    cout<<"B = ";
    cin>>b;

    cout << "multiply of" << a <<"and" << b <<"=" << a*b << endl;
}

inline void sub()
{
     int a,b;

    cout<<"A = ";
    cin>>a;

    cout<<"B = ";
    cin>>b;

    cout << "sub of" << a <<"and" << b <<"=" << a-b << endl;

}

inline void div()
{
     int a,b;

    cout<<"A = ";
    cin>>a;

    cout<<"B = ";
    cin>>b;

    cout << "division of" << a <<"and" << b <<"=" << a/b << endl;
}

inline void mod()
{
     int a,b;

    cout<<"A = ";
    cin>>a;

    cout<<"B = ";
    cin>>b;

    cout << "modules of" << a <<"and" << b <<"=" << a%b << endl;
}

inline void cal()
{
    int ch;

    do
    {
        cout<< "Press 1 for Addition." << endl;
        cout<< "Press 2 for Substraction." << endl;
        cout<< "Press 3 for Multiplication." << endl;
        cout<< "Press 4 for Division." << endl;
        cout<< "Press 5 for Module." << endl;
        cout << "Press 6 for Exit." << endl;

        cout <<"Enter your choice : ";
        cin >>ch;

        switch(ch)
        {
            case 1:
                add();
                break;
            case 2:
                sub();
                break;
            case 3:
                mul();
                break;
            case 4:
                div();
                break;
            case 5:
                mod();
                break;
        }

    }while(ch!=6);
}

int main()
{
    cal();
}