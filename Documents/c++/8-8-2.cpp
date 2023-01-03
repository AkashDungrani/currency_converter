#include<iostream>
using namespace std;
class p
{
    public:
             float c,F=1.8;
             int K=273,R=32;

             void setdata()
             {
                 cout << "enter the celsius =";
                 cin >> c;
             }

             void getdatap()
             {
                 cout << "celsius =" << c << endl;
             }

};
class Q : public p
{
    public:

    void getdataQ()
             {
                 cout << "fahernhit =" << c*F +R<< endl;
             }

};
class R :public Q
{
    public:
          void getdataR()
          {
              cout << "kelvin="<< c+K << endl;
          }
};

int main()
{
    R r1;
    r1.setdata();
    r1.getdatap();
    r1.getdataQ();
    r1.getdataR();


}
