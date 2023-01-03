#include <iostream>
using namespace std;

class A
{
private:
    int id;

public:
    void setdata()
    {
        cout << "Enter Student Id : ";
        cin >> id;
    }
    void getdata()
    {
        cout << "Student ID       : " << id << endl;
    }
};
class B
{
private:
    char nm[200];
    A a1;

public:
    void setdata()
    {
        a1.setdata();
        cout << "Enter Student Name : ";
        cin >> nm;
    }
    void getdata()
    {
        a1.getdata();
        cout << "Student Name     :" << nm << endl;
    }
};

int main()
{
    int i, n;

    cout << "Enter number of student : ";
    cin >> n;

    B b1[n];

    cout << endl
         << "Input Student " << endl;

    for (i = 0; i < n; i++)
    {
        b1[i].setdata();
    }

    cout << endl
         << endl
         << " Students Details " << endl;
    for (i = 0; i < n; i++)
    {
        b1[i].getdata();
    }
}
