#include<iostream>
using namespace std;
class A
{
    int a;
    public:
            A()
            {
                a=10;
            }
            virtual void setdata()
            {
                cout << "value of A is = " << a << endl;
            }
            void greeting()
            {
                cout << "good morning" << endl;
            }
};
class B : public A
{
    int b;
    public:
            B()
            {
                b=20;
            }
            void setdata()
            {
                cout << "value of B is = " << b << endl;
            }
};
int main()
{
    A *a;
    B b;
    a=&b;
    a->setdata();
    a->greeting();
}