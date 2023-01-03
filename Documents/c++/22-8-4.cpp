#include<iostream>
using namespace std;
class A
{
  private:
        int a;

  public:
        void setdata(int a)
        {
            this->a=a;
        }      
        void getdata(int i)
        {
            cout << i << "a: " << a << endl;
        }
        A operator++(int a)
        {
            A tmp;
            tmp.a=this->a++;
            return tmp;
        }
        A operator--()
        {
            A tmp;
            tmp.a=this->a--;
            return tmp;
        }
};
int main()
{
    A a1,a2,a3;
    a1.setdata(10);
    a2=a1++;
    a3=--a2;
    a1.getdata(1);
    a2.getdata(2);
    a3.getdata(3);
}