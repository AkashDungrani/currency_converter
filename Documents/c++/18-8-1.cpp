#include<iostream>
using namespace std;
class A
{
    private:
           int a;
    public:
           void set(int a)       
           {
               this->a =a;
           }
           void get()
           {
               cout << "A:" << a << endl;
           }
           bool operator>(A a2)
           {
               return (this ->a > a2.a) ?true :false;
           }
};
int main()
{
    A a1,a2;
    a1.set(10);
    a2.set(20);

    if(a1>a2)
    {
        cout << "a1 has greater value";
    }
    else
    {
        cout << "a2 has greater value";
    }
}