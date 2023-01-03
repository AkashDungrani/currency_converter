#include<iostream>
using namespace std;
class Cricket
{
    public:
        int over;
};
class T20match : public Cricket
{
    public:
        void gettotalover()
        {
            cout << "Enter the T20 Match Over: ";
            cin  >> over;
        }
};
class Testmatch : public T20match
{
    public:
        void gettotalover()
        {
            cout << "Enter the Test Match Over: ";
            cin  >> over;
        }
};
int main()
{
    Testmatch t;
    t.gettotalover();
}
