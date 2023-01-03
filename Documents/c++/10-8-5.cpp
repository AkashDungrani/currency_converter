#include<iostream>
#include<string.h>
using namespace std;
class MATHS
{
public:
int s;
int c;
};
class Sqe : public MATHS
{
public:
void Square(int n1)
{
int b;
b = n1 * n1;
cout << endl << endl << "Square : " << b << endl << endl;
}
};
class Cub : public MATHS
{
public:
void cubs(int n2)
{
int a;
a = n2 * n2 * n2;
cout << "Cub : " << a;
}
};
int main()
{
int n1,n2;
Sqe s1;
Cub c1;
cout << endl << "Enter Number for Square : ";
cin >> n1;
cout << endl << endl << "Enter Number for Cub : ";
cin >> n2;
s1.Square(n1);
c1.cubs(n2);
return 0;
}