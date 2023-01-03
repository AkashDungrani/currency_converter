#include<iostream>
using namespace std;
class employe
{
 private:
        int i;
        long long int emp_contact;
        int emp_id,emp_salary,emp_exp;
        char emp_nm[100],emp_role[50],emp_add[50],emp_email[50];
    
 public:
        void setdata()
        {
            
                cout << "emplopye id=";
                cin >> emp_id;
                cout <<"employe name=";
                cin >> emp_nm;
                 cout << "emplopye role=";
                cin >> emp_role;
                 cout << "emplopye salary=";
                cin >> emp_salary;
                cout <<"employe experience=";
                cin >> emp_exp;
                 cout << "emplopye address=";
                cin >> emp_add;
                cout <<"employe email =";
                cin >> emp_email;
                cout << "enter employe contact number : ";
                cin >> emp_contact;
            
            
        } 
        void getdata()
        {
            
                cout << "employe id=" << emp_id << endl;
                cout << "employe name=" << emp_nm << endl;
                cout << "employe role=" << emp_role << endl;
                cout << "employe salary=" << emp_salary << endl;
                cout << "employe experiyence year=" << emp_exp << endl;
                cout << "employe address=" << emp_add << endl;
                cout << "employe email id=" << emp_email << endl;
                cout << "employe contact number =" << emp_contact << endl;

            
        }
};

int main()
{
    employe e1,e2,e3,e4,e5;
    e1.setdata();
    e2.setdata();
    e3.setdata();
    e4.setdata();
    e5.setdata();

    e1.getdata();
    e2.getdata();
    e3.getdata();
    e4.getdata();
    e5.getdata();
    
    
}