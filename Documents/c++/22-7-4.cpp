#include<iostream>
using namespace std;

int table();

int main()
{
	table ();
	return 0;
}

inline int table()
{
	int n,i;
	cout<<"Enter Number = ";
	cin>>n;
	
	for(i=1;i<=10;i++)
	{
		cout<<n<<" * "<<i<<" = "<<n*i<<endl;
	}
}