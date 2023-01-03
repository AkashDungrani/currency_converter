#include<iostream>
using namespace std;

int main()
{
	int a,b,c;
	a=8;
	b=0;
	
	try
	{
		if(b==0)
		{
			throw 'p';
		}
		else
		{
			c = a/b;
			cout << c << endl;
		}	
	}
	catch(float n)
	{
		cout << "Not Possible...."<< endl;
	}
	catch(int n)
	{
		cout << "Error" << endl;
	}
	catch(...)
	{
		cout << "General Exeption Block" << endl;
	}
	return 0;
}
