#include<iostream>
using namespace std;

void swap();
int main()
{
	swap();
}

void swap()
{
	
	
	int a[5],b[5],c[5],i;
	
	cout<<"Enter 1st Array ="<<endl;
	
	for(i=0;i<5;i++)
	cin>>a[i];
	
	cout<<"Enter 2nd Array ="<<endl;
	
	for(i=0;i<5;i++)
	cin>>b[i];
	
	for(i=0;i<5;i++)
	{
		c[i] = a[i];
		a[i] = b[i];
		b[i] = c[i];
	}
	
	cout<<"After Swaping Array"<<endl;
	
	cout<<"1st Array"<<endl;
	for(i=0;i<5;i++)
	{
		cout<<a[i]<<endl;
	}
	
	cout<<"2nd Array"<<endl;
	for(i=0;i<5;i++)
	{
		cout<<b[i]<<endl;
	}
}