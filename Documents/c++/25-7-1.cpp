#include<iostream>
using namespace std;
class employe
{
 private:
        int i;
        int emp_id,emp_age,emp_salary,emp_exp;
        char emp_nm[100],emp_role[50],emp_city[50],emp_cnm[50];
    
 public:
        void setdata()
        {
            
                cout << "emplopye id=";
                cin >> emp_id;
                cout <<"employe name=";
                cin >> emp_nm;
                 cout << "emplopye role=";
                cin >> emp_role;
                cout <<"employe age=";
                cin >> emp_age;
                 cout << "emplopye salary=";
                cin >> emp_salary;
                cout <<"employe experience=";
                cin >> emp_exp;
                 cout << "emplopye city=";
                cin >> emp_city;
                cout <<"employe company name =";
                cin >> emp_cnm;
            
            
        } 
        void getdata()
        {
            
                cout << "employe id=" << emp_id << endl;
                cout << "employe name=" << emp_nm << endl;
                cout << "employe role=" << emp_role << endl;
                cout << "employe age=" << emp_age << endl;
                cout << "employe salary=" << emp_salary << endl;
                cout << "employe experiyence year=" << emp_exp << endl;
                cout << "employe city=" << emp_city << endl;
                cout << "employe company name=" << emp_cnm << endl;

            
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