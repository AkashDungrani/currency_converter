#include<iostream>
using namespace std;

class Bank
{
 private:
  int num;
  char name[50];
  char type[50];
  char branch_nm[50];
  int balance;
 
 public :
  void SetData(int a,int b)
  {
   cout << "(" << a << "/" << b << ")" << endl << endl; 
   cout << "Enter A/C number = ";
   cin  >> num;
   cout << "Enter A/C name = ";
   cin  >> name;
   cout << "Enter A/C type = ";
   cin  >> type;
   cout << "Enter A/C branch name = ";
   cin  >> branch_nm;
   cout << "Enter A/C balance = ";
   cin  >> balance;
   system("cls");
  }
  
  static void Header()
  {
   cout << "no\tnumber\tname\ttype\tbranch\tbalance" << endl;
  }
  
  void GetData(int n)
  {
   cout << n << "\t" << num << "\t" << name << "\t" << type << "\t" << branch_nm << "\t" << balance << "\t" << endl;
  }
  
  void Num(int i,int n)
  {
   cout << endl << endl;
   do
   {
    for(i=1 ; i<=n ; i++)
    {
     cout << "Press " << i << " for get information of " << i << " number's detail..." << endl;
    }
    
    cout << "\n\nEnter number = ";
    cin  >> num;
    
    switch(num)
    {
     case 1:
      cout << "\nA/C number = " << num << endl;
      cout << "A/C name = " << name << endl;
      cout << "A/C type = " << type << endl;
      cout << "A/C branch name = " << branch_nm << endl;
      cout << "A/C balance = " << balance << endl;
      break;
     case 2:
      cout << "\nA/C number = " << num << endl;
      cout << "A/C name = " << name << endl;
      cout << "A/C type = " << type << endl;
      cout << "A/C branch name = " << branch_nm << endl;
      cout << "A/C balance = " << balance << endl;
      break;
     
     case 0:
      break;
     
     default:
      cout << "Error...";
    }
      }
   while(num!=0);
  }
};

int main()
{
 int i,n;
 cout << "Enter how many bank detail you have = ";
 cin  >> n;
 system("cls");
 
 Bank a[n];
 
 for(i=1 ; i<=n ; i++)
 {
  a[i].SetData(i,n);
 }
 
 Bank::Header();
 
 for(i=1 ; i<=n ; i++)
 {
  a[i].GetData(i);
 }
 
 a[n].Num(i,n);
}