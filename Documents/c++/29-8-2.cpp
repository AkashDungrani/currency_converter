#include<iostream>
using namespace std;

int main()
{
	int age;
	cout << "Please Enter your Age : ";
	cin >> age;

	
	try
	{
		if(age < 18)
		{
			 throw 1;
		}
		else
		{
			throw 15.5;
		}	
	}
	catch(double n)
	{
		cout << "You are eligible to vote."<< endl;
	}
	catch(int n)
	{
		cout << "Sorry, You are not eligible to vote." << endl;
		cout << "You will able to vote after " << 18-age << " year";

	}
	catch(...)
	{
		cout << "General Exception Block" << endl;
	}
	return 0;
}
