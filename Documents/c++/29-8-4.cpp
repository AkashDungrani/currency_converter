#include<iostream>
using namespace std;

class Garage
{
    public:
		Garage()
		{
			throw 0;
		}
		
};

class Motor : public Garage
{
	public:
		Motor()
		{
			cout << "Motor class closed..." << endl;
		};
};

int main()
{
	
	cout << "You Entered the Constructer Of Class Motor..." << endl;
	
	cout << "So..." << endl;
	
	cout << "\n---------------------------------------- \n" << endl;
	
	try
	{
		Motor car;
	}
	
	catch(...)
	{
		cout << "You Called Constructer Of Class Motor..." << endl;
	}
	
	cout << "--------------------------------" << endl;
	cout << "--------------------------------" << endl;
	cout << "--------------------------------";	

	}
