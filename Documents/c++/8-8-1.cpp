#include<iostream>
using namespace std;
class X
{
  public:
         int a,b,c;
};
class Y :public X
{
  public:
  void setdata()
  {
  cout  << "enter A :";
  cin >> a;
  cout << "enter B :";
  cin >> b;
  cout << "enter C :";
  cin >> c;
  }

  void getdata()
  {
      cout << "sum of cubes of A + B + C= "<< a*a*a + b*b*b + c*c*c << endl;
  }

};
int main()
{
    Y y1;
    y1.setdata();
    y1.getdata();
}