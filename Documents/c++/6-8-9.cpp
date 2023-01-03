#include <iostream>
using namespace std;

class hotel
{
private:
    int id;
    string nm, city;

public:
    hotel(int id, string nm, string city)
    {
        cout << "Welcome to the hotel..." << endl;

        this->id = id;
        this->nm = nm;
        this->city = city;

        cout << "ID\t : " << this->id << endl
             << "Name\t : " << this->nm << endl
             << "City\t : " << this->city << endl
             << endl;
    }
    ~hotel()
    {

        cout << "VISIT AGAIN.....!!" << endl;
    }
};
int main()
{

    hotel a1(1, "Laxmi", "Surat");
}
