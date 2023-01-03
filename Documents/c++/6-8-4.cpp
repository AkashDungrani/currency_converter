#include <iostream>
using namespace std;

class HighSchool
{
private:
    int id, stu_roll_no, stu_standard, stu_age;
    long long int stu_contact;
    string stu_name, stu_address;
    static string stu_edu_institute_name;

public:
    void
    setSchool()
    {
        cout << "Enter ID : ";
        cin >> id;
        cout << "Enter Name : ";
        cin >> stu_name;
        cout << "Enter Roll Number : ";
        cin >> stu_roll_no;
        cout << "Enter Standard : ";
        cin >> stu_standard;
        cout << "Enter Age : ";
        cin >> stu_age;
        cout << "Enter Contact : ";
        cin >> stu_contact;
        cout << "Enter Address: ";
        cin >> stu_address;
    }
    static void headerSchool()
    {
        cout << endl
             << "\t\t\t\t\tSTUDENTS DETAILS\t\t\t\t\t\n";
        cout << "Index No\tId\tName\tRoll No\tSTD\tAge\tContact\t\tInstitute Name\tAdress\n-------- \t------- ------- ------- ------- ------- -----------\t-------------- -----------\n";
    }
    void getSchool(int i)
    {
        cout << i << "\t\t" << id << "\t" << stu_name << "\t" << stu_roll_no << "\t" << stu_standard << "\t" << stu_age << "\t" << stu_contact << "\t" << stu_edu_institute_name << "\t\t" << stu_address << "\n";
    }
};
class College
{
private:
    int id, stu_roll_no, stu_standard, stu_age;
    long long int stu_contact;
    string stu_name, stu_address;
    static string stu_institute_name;

public:
    void setClg()
    {
        cout << "Enter ID : ";
        cin >> id;
        cout << "Enter Name : ";
        cin >> stu_name;
        cout << "Enter Roll Number : ";
        cin >> stu_roll_no;
        cout << "Enter Standard : ";
        cin >> stu_standard;
        cout << "Enter Age : ";
        cin >> stu_age;
        cout << "Enter Contact : ";
        cin >> stu_contact;
        cout << "Enter Address: ";
        cin >> stu_address;
    }
    static void headerClg()
    {
        cout << endl
             << "\t\t\t\t\tCOLLAGE DETAILS\t\t\t\t\t\n";
        cout << "Index No\tId\tName\tRoll No\tSTD\tAge\tContact\t\tInstitute Name\tAdress\n-------- \t------- ------- ------- ------- ------- -----------\t-------------- -----------\n";
    }
    void getClg(int i)
    {
        cout << i << "\t\t" << id << "\t" << stu_name << "\t" << stu_roll_no << "\t" << stu_standard << "\t" << stu_age << "\t" << stu_contact << "\t" << stu_institute_name << "\t\t" << stu_address << "\n";
    }
};

string HighSchool::stu_edu_institute_name = "GSEB";
string College::stu_institute_name = "R&W";

int main()
{
    int i, n;

    cout << endl
         << "Enter number of School Students : ";
    cin >> n;

    HighSchool s1[n];

    for (i = 0; i < n; i++)
    {
        cout << endl;
        s1[i].setSchool();
    }
    HighSchool::headerSchool();

    for (i = 0; i < n; i++)
    {
        s1[i].getSchool(i + 1);
    }

    int j, m;

    cout << endl
         << endl
         << "Enter number of Collage Students : ";
    cin >> m;

    College c1[m];

    for (j = 0; j < n; j++)
    {
        cout << endl;
        c1[j].setClg();
    }
    College::headerClg();

    for (j = 0; j < n; j++)
    {
        c1[j].getClg(j + 1);
    }
}
