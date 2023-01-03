#include<iostream>
using namespace std;

class A
{
    int a=10;

    public:
            virtual void viewA()
            {
                cout << "value of A is = " << a << endl;
            }
};
class B :virtual public A
{
    int b=20;
    public:
            void viewB()
            {
                cout << "value of B is = " << b << endl;
            }
};
class C : virtual public A
{
    int c=30;
    public:
            void viewC()
            {
                cout << "VALUE OF C IS =" << c << endl;
            }
};
class D: public B,public C
{
    int d=30;
    public:
            void viewC()
            {
                cout << "VALUE OF D IS =" << d << endl;
            }
};
int main()
{
    D d1;
    d1.viewA();
}