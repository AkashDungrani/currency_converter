#include<iostream>
using namespace std;

class A
{
	public :
		int q,p;
		
		A(int q,int p)
		{
			this->q = q;
			this->p = p;
	    }
};

int main()
{
	int z,y;
	
	cout << "Enter value of z = ";
	cin  >> z;
	
	cout << "Enter value of y = ";
	cin  >> y;
	
	A c(z,y);
	
	try
	{
		if(y<0 && z<0)
		{
			
			cout << "\nYou entered minous number..." << endl;
			cout << "But than..." << endl;
			cout << "The sum of  minous number => || " <<endl;
			
			cout << "\nSum of " << "" << z << " and " << "" << y << " = " << z+y;
		}
		
		else if(y>0 && z>0)
		{
			
			cout << "You entered plus number so the sum of number is => || ";
			
			cout << "\nSum of " << z << " and " << y << " = " << z+y;
		}
		
		else
		{
			throw 0;
		}
	}
	
	catch(...)
	{
		cout << "\nEnter Undefined symbol...-_- :(";
	}
}
