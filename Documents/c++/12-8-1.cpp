#include<iostream>
using namespace std;
class A
{
   protected:
             
             int sub ;
             int sum ;
             int div ;
             int mul ;
};

class B : public A
{
    public:
           void calculate(int a,int b,int c,int d,int e)
           {
               sum=a+b+c+d+e;
               cout << "sum = " << sum << endl;
           }
           void calculate(int a,int b,int c,int d)
           { 
               mul=a*b*c*d;
               cout << "mul = " << mul << endl;
           }
           void calculate(int a,int b)
           {
               div=a/b;
               cout << "div = " << div << endl;
           }
           void calculate(int a,int b,int c)
           {
               sub=a-b-c;
               cout << "sub = " << sub << endl;
           }


};
int main()
{
    B b1;
    b1.calculate(12,2);
    b1.calculate(90,50,10);
    b1.calculate(1,2,3,4);
    b1.calculate(12,13,14,15,16);
}
