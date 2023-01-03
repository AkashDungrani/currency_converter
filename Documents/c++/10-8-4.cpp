#include<string.h>
#include<iostream>
using namespace std;
class Emp1
{
     public:
           int emp_id;
           char emp_name[100];
           void Set_Data()
           {
               cout << "Emp_id : "; cin >> this->emp_id;
               cout << "Emp_name : "; fflush(stdin); gets(this->emp_name);
           }
           void Get_Data2()
           {
               cout << "Employee id : " << emp_id << endl
               << "Employee name : " << emp_name << endl;
           }
};
class Emp2
{
         public:
               int emp_age;
               int emp_exp;
               void Set_Data2()
                 {
               cout << "Emp_age : "; cin >> this->emp_age;
               cout << "emp_exp : "; cin >> this->emp_exp;
                 }
               void Get_Data()
                 {
               cout << "Employee age : " << emp_age << endl
               << "Employee expirence : " << emp_exp << endl;
                 }
};
class Emp3 : public Emp1, public Emp2
{
          public:
                void Set_Data3()
                {
                    Set_Data();
                    Set_Data2();
                }
                void Get_Data3()
                {
                    Get_Data2();
                    Get_Data();
                }
};
int main()
    {
       Emp3 o1;
       o1.Set_Data3();
       o1.Get_Data3();
       return 0;
    }