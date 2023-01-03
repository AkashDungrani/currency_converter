#include <iostream>
#include <string.h>
using namespace std;

class State
{
private:
    char state[200];
    char details[200];
    static string country;

public:
    void setState()
    {
        cout << "Enter State : ";
        cin >> state;
        cout << "Enter State details : ";
        cin >> details;
    }
    static void header()
    {
        cout << "\n\t\tSTATE DETAILS\t\t\t\t\n";
        cout << "IndexNo\tCountry\tState\tState Details\n------- ------- ------- ---------------------\n";
    }
    void getState(int i)
    {
        cout << i << "\t" << country << "\t" << state << "\t" << details << "\t\t\t\t" << endl;
    }
};

string State::country = "India";

int main()
{
    int i, n;

    cout << endl
         << "Enter number of State : ";
    cin >> n;

    State s1[n];

    for (i = 0; i < n; i++)
    {
        s1[i].setState();
    }
    State::header();
    for (i = 0; i < n; i++)
    {
        s1[i].getState(i + 1);
    }
}
