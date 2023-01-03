#include<iostream>
using namespace std;
class A
{
    private:
          int a,b,c,d;
    public:
          void sum()
          {
              a=0,b=0;
              cout << "sum =" << a+b << endl;
          }
          void sum(int a)
          {
              cout << "sum= " << a << endl;
          }
          void sum(int a, int b)
          {
              cout << "sum =" << a+b << endl;
          }
          void sum(int a,int b,int c)
          {
              cout << "sum=" << a+b+c << endl;
          }
};
int main()
{
    A a;
    a.sum();
    a.sum(10);
    a.sum(20,30);
    a.sum(10,20,30);
}
