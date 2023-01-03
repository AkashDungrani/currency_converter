#include <iostream>
using namespace std;

class Hotel
{
private:
    int h_id, h_rate, h_esta_year, h_staff_quan, h_room_quan;
    string h_nm, h_typ;
    string h_add, h_web;

public:
    Hotel(int h_id, int h_rate, int h_esta_year,
          int h_staff_quan, int h_room_quan,
          string h_nm, string h_typ,
          string h_add, string h_we)
    {
        this->h_id = h_id;
        this->h_rate = h_rate;
        this->h_esta_year = h_esta_year;
        this->h_staff_quan = h_staff_quan;
        this->h_room_quan = h_room_quan;
        this->h_nm = h_nm;
        this->h_typ = h_typ;
        this->h_add = h_add;
        this->h_web = h_web;
    }
    Hotel()
    {
        cout << "Hotel ID: ";
        cin >> h_id;
        cout << "Hotel Name: ";
        cin >> h_nm;
        cout << "Hotel Type(like hotel or motel): ";
        cin >> h_typ;
        cout << "Hotel address: ";
        cin >> h_add;
        cout << "Hotel Rating(In Star): ";
        cin >> h_rate;
        cout << "Hotel Established Year: ";
        cin >> h_esta_year;
        cout << "Hotel Staff Quantity: ";
        cin >> h_staff_quan;
        cout << "Hotel Room Quantity: ";
        cin >> h_room_quan;
        cout << "Hotel Website: ";
        cin >> h_web;
        cout << endl
             << endl;
    }

    void getHotel()
    {
        cout << "Hotel ID                           : " << this->h_id << endl;
        cout << "Hotel Name                         : " << this->h_nm << endl;
        cout << "Hotel Type(like hotel or motel)    : " << this->h_typ << endl;
        cout << "Hotel address                      : " << this->h_add << endl;
        cout << "Hotel Rating(In Star)              : " << this->h_rate << endl;
        cout << "Hotel Established Year             : " << this->h_esta_year << endl;
        cout << "Hotel Staff Quantity               : " << this->h_staff_quan << endl;
        cout << "Hotel Room Quantity                : " << this->h_room_quan << endl;
        cout << "Hotel Website                      : " << this->h_web << endl;
    }
};

int main()
{
    int n;

    cout << "Enter Number of Hotel: ";
    cin >> n;

    Hotel h1[n];

    for (int i = 0; i < n; i++)
    {
        h1[i].getHotel();
    }

    cout << endl;
}
