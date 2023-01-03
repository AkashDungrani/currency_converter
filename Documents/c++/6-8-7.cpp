#include <iostream>
using namespace std;

class hotel
{
private:
    string name;

public:
    hotel(string name)
    {
        cout << endl
             << "Welcome to the hotel..." << endl;

        this->name = name;

        cout << "Name : " << name << endl;
    }
};
int main()
{
    hotel a1("Akash");
}
