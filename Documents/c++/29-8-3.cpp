#include<iostream>
using namespace std;

int main()
{
	char str[100];
	int i;
	cout << "Enter a string: ";
	cin >> str;
	try
	{
		for(i=0; i<=str[100]; i++)
		{
			if (str[i] >= 'A' || str[i] <= 'Z')
				throw 'a';
            
            else if(str[i]>='a' || str[i]<='z')
                throw 'A';    

			else
				throw 1;
		}
	}

	catch(char n)
	{
		cout << "Congratulation! Password Validate..."<< endl;
	}
    catch(char n)
	{
		cout << "Congratulation! Password Validate..."<< endl;
	}
	catch(int n)
	{
		cout << "Sorry, Password Not Validate...." << endl;
	}
	catch(...)
	{
		cout << "General Exeption Block" << endl;
	}
	return 0;
}
