#include<iostream>
using namespace std;

int f1(int,int);
int f2(int);

int main()
{
	int a=3,b=4;
	
	f2(f1(a,b));
	
}
int f1(int i,int j)
{
	return (i+j);
}
int f2(int a)
{
	cout<<"Addition Is = "<<a;
}