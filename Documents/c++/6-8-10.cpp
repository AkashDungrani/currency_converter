#include <iostream>
using namespace std;

class hotel
{
private:
    int id;
    string nm, city;

public:
    hotel()
    {
        cout << "Not valid hotel , Please try again...!!";
    }
    hotel(int id, string nm, string city)
    {
        cout << "Welcome to the hotel..." << endl;

        this->id = id;
        this->nm = nm;
        this->city = city;

        cout << "ID\t : " << this->id << endl
             << "Name\t : " << this->nm << endl
             << "City\t : " << this->city << endl;
    }
    hotel(hotel &a)
    {

        cout << "Welcome to the hotel..." << endl;

        this->id = a.id;
        this->nm = a.nm;
        this->city = a.city;

        cout << "ID\t : " << this->id << endl
             << "Name\t : " << this->nm << endl
             << "City\t : " << this->city << endl;
    }
};
int main()
{
    cout << endl
         << "=====================" << endl
         << "Default Value..." << endl
         << "=====================" << endl
         << endl;
    hotel a5;
    cout << endl
         << endl
         << "=====================" << endl
         << "Perameterized Value..." << endl
         << "=====================" << endl
         << endl;
    hotel a1(1, "Marriot", "Surat");
    hotel a2(2, "Lacasa", "Surat");

    cout << endl
         << "=====================" << endl
         << "Copied Value..." << endl
         << "=====================" << endl
         << endl;

    hotel a3(a1);
    hotel a4(a2);
}
