#include<iostream>
using namespace std;
class A
{
    private:
            int a;
    public:
            void setdata(int a)
            {
                this ->a=a;
            }
            void getdata()
            {
                cout << "a:" << a << endl;
            }
            A operator+(A a2)
            {
                A tmp;
                tmp.a = this->a+a2.a;
                return tmp;
            }
};
int main()
{
    A a1,a2,a3;
    a1.setdata(10);
    a2.setdata(20);
    a3=a1+a2;
    a1.getdata();
    a2.getdata();
    a3.getdata();
}