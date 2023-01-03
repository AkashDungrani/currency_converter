#include<iostream>
using namespace std;

int fact(int);

int main()
{
	int n,ans;
	
	cout<<"Enter Value Of N = "<<endl;
	cin>>n;
	
	ans = fact(n);
	
	cout<<"Factorial Of "<<n<<" is = "<<ans;
}

int fact(int n)
{
	if(n<=1)
	return 1;
	else
	return n*fact(n-1);
}