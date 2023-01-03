#include<stdio.h>
#include<iostream>
#include<string.h>
using namespace std;
class A
{
      public:
             int emp_id;
             char emp_name[100];
             char emp_role[100];
             int emp_salary;
             int emp_exp;
             char emp_company_name[100];
             char emp_address[100];
             char emp_email[100];
             long long int emp_contect;
            void Set_Data()
            {
            cout << "emp_id : "; cin >> this->emp_id;
            cout << "emp_name : "; fflush(stdin); gets(this->emp_name);
            cout << "emp_role : "; fflush(stdin); gets(this->emp_role);
            }
};
class B : public A
{
      public:
            void Set_Data1()
            {
            cout << "emp_exp : "; cin >> this->emp_exp;
            cout << "emp_salary : "; cin >> this->emp_salary;
            }
};
class C : public B
{
      public:
            void Set_Data2()
            {
            cout << "emp_company_name : "; fflush(stdin);
            gets(this->emp_company_name);
            cout << "emp_address : "; fflush(stdin);
            gets(this->emp_address);
            }
            void Get_Data()
            {
            cout << "Employee name : " << this->emp_name << endl
            << "Employee role : " << this->emp_role << endl
            << "Employee salary : " << this->emp_salary << endl;
            }
};
class D : public C
{
     public:
           void Set_Data3()
                 {
                 Set_Data();
                 Set_Data1();
                 Set_Data2();
                 cout << "emp_email : "; fflush(stdin); gets(this->emp_email);
                 cout << "emp_contect : "; fflush(stdin); cin >>
                 this->emp_contect;
                 }
           void Get_Data1()
                 {
                 cout << endl << endl << "Employee id : " << this->emp_id <<
                 endl;
                 Get_Data();
                 cout << "Employee expirence : " << this->emp_exp << endl
                 << "Employee company name : " <<
                 this->emp_company_name << endl
                 << "Employee address : " << this->emp_address << endl
                 << "Employee email : " << this->emp_email << endl
                 << "Employee contect : " << this->emp_contect << endl <<
                 endl;
                 }
};
int main()
{
     D emp;
     emp.Set_Data3();
     emp.Get_Data1();
     return 0;
}