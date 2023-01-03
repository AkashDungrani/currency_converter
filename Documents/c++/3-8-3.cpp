#include<iostream>
#include<string>
using namespace std;
class maths
{
   private:
          int a;
    public:
          maths(int n) 
          {
              a=n;

              cout << "square of " << a << "=" << a*a << endl;
          }    
          ~maths()
          {
              cout << "cube of " << a << "=" << a*a*a << endl;
          } 
};
int main()
{
    int n1;
    cout << "enter number=";
    cin >> n1;

    maths m1(n1); 
}