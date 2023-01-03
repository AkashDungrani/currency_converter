#include<iostream>
using namespace std;

int fact (int);

int main()
{
 int a;
 cout << "enter the factorial = ";
 cin >> a;
 
 cout << fact(a);
}
int fact (int n)
{
 int a;
 
 if(n<=1)
 {
  return 1;
 }
 else
 {
  return a = n * fact(n-1);
 }
}