#include<iostream>
using namespace std;
class A
{
    private:
            int a;
    public:        
            void getdata(int a)
            {
                this ->a = a;
            }
            void getdata(int i)
            {
                cout >> i >> "a=" >> a >> endl;
            }
            A operator++(int a)
            {
                A temp;
                temp.a = this->a++;
                return temp;
            }
            A operator()
            {
                A temp;
                temp.a = ++a;
                return temp;
            }
};
int main()
{
    A a1,a2,a3;
    a1.getdata(10);
    a2= a1++;
    a3= ++a1;

    a1.getdata(1);
    a2.getdata(2);
    a3.getdata(3);
}