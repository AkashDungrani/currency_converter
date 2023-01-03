#include <iostream>
using namespace std;

class Student
{
    int id, std, rollno;
    char name[200], institute_name[200];

public:
    void getStu()
    {
        cout << "Enter Id : ";
        cin >> id;
        cout << "Enter Name : ";
        cin >> name;
        cout << "Enter STD : ";
        cin >> std;
        cout << "Enter Roll No : ";
        cin >> rollno;
        cout << "Enter School Name : ";
        cin >> institute_name;
    }
    void printStu()
    {
        cout << "Student  Id            :" << id << endl;
        cout << "Student  Name          :" << name << endl;
        cout << "Student  STD           :" << std << endl;
        cout << "Student  Roll No       :" << rollno << endl;
        cout << "Student  School Name   :" << institute_name << endl;
    }
};
int main()
{
    int i, n;

    cout << endl
         << "Enter number of student : ";
    cin >> n;

    Student s1[n];

    for (i = 0; i < n; i++)
    {
        cout << endl
             << "STUDENT NO:" << i + 1 << endl
             << endl;
        s1[i].getStu();
    }

    cout << endl
         << "===========================" << endl
         << "      STUDENT DETAILS     " << endl
         << "===========================" << endl;

    for (i = 0; i < n; i++)
    {
        s1[i].printStu();
        cout << endl;
    }
}
