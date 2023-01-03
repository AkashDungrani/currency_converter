#include<iostream>
#include<string.h>
using namespace std;
class Admin
{
    protected:
        string company_nm;
        int manager_salary;
        int emp_salary;
        int total_staff;
        int annual_revenue;
        int can_terminate;

    public:
        void set()
        {
            cout << "enter company name=" ;
            getline(cin,company_nm);
            cout << "enter manager salary = ";
            cin >> manager_salary;
            cout << "employe salary=";
            cin >> emp_salary;
            cout << "total staff=";
            cin >> total_staff;
            cout << "annual revenue of company=";
            cin >> annual_revenue;
            cout << "enter can_terminate=";
            cin >> can_terminate;
        }
};
class manager : public Admin
{
    public:
        void myAccess()
    {
        cout << "company name" << company_nm << endl;
        cout << "manager salary is=" << manager_salary << endl;
        cout << "total staff is =" << total_staff << endl;
        cout << "annual revenue of company is=" << annual_revenue << endl;
        cout << "can terminate=" << can_terminate << endl;
    }
};
class employee : public manager
{
     public:
        void myAccess()
    {
        cout << "company name" << company_nm << endl;
        cout << "employe salary is=" << emp_salary<< endl;
        cout << "total staff is =" << total_staff << endl;
        cout << "annual revenue of company is=" << annual_revenue << endl;
        cout << "can terminate=" << can_terminate << endl;
    }
};

int main()
{
    employee E1;
    E1.set();
    E1.manager::myAccess();
    E1.myAccess();
}