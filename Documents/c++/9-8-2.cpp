#include<iostream>
using namespace std;
class A
{
   protected:
            int a;

            public:
                 A()
                 {
                     cout << "enter a=";
                     cin >> a;
                 }
};
class B:public A
{
    protected:
             int b;
    public:
           void setB()
           {
               cout << "enter b=";
               cin >> b;
           }         
};
class c :public A
{
    protected:
              int c;
    public:
           void setC()
           {
               cout << "enter c=";
               cin >>c;
           }          
};
class D:public B,public c
{
    protected:
             int d;
    public:
         void setD()
         {
             cout << "enter D=";
             cin >>d;
             cout << "A+B+c+D=" << B::a+b+c+d;
         }
         
                
};
int main()
{
    D d1;

    d1.setB();
    d1.setC();
    d1.setD();
    


}