#include<iostream>
using namespace std;
class student
{
 private:
        int i;
        int student_id,student_age;
        char student_nm[100],student_course[50],student_email[50],student_city[50],student_clg[50];
    
 public:
        void setdata()
        {
            
                cout << "student id=";
                cin >> student_id;
                cout << "student name=";
                cin >> student_nm;
                 cout << "student course=";
                cin >> student_course;
                cout <<"student age=";
                cin >> student_age;
                cout <<"student email=";
                cin >> student_email;
                 cout << "student city=";
                cin >> student_city;
                cout << "student college name =";
                cin >> student_clg;
            
            
        } 
        void getdata()
        {
            
                cout << "student id=" << student_id << endl;
                cout << "student name=" << student_nm << endl;
                cout << "student course=" << student_course << endl;
                cout << "student age=" << student_age << endl;
                cout << "student email=" << student_email << endl;
                cout << "student city=" << student_city << endl;
                cout << "student college name=" << student_clg << endl;

            
        }
};

int main()
{
    student s1,s2,s3,s4,s5;
    s1.setdata();
    s2.setdata();
    s3.setdata();
    s4.setdata();
    s5.setdata();

    s1.getdata();
    s2.getdata();
    s3.getdata();
    s4.getdata();
    s5.getdata();
    
}