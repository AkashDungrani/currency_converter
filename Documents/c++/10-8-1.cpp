#include<string.h>
#include<iostream>
using namespace std;
class Shape
{
public:
int hight,base,lenght;
int tot,i;

Shape()
{
cout << "Enter Hight :"; cin >> this->hight;
cout << "Enter base : "; cin >> this->base;
cout << "Enter Langht : "; cin >> this->lenght;
}
};
class T : public Shape
{
public:
int tot = 0.5 * base * hight;
void GetData()
{
cout << endl << endl << "Trangle : " << tot;
}
};
class R : public Shape
{
public:
int tot = lenght * base;
void GetData()
{
cout << endl << endl << "Rectrangle : " << tot << endl << endl;
}
};
int main()
{
Shape o1();
T o2;
R o3;
o2.GetData();
o3.GetData();
return 0;
}