#include<iostream>
#include<string.h>
using namespace std;
class A
{
    private:
           string a;
    public:
            A (string a)
            {
                this ->a=a;
            }       
            void print()
            {
                cout << a << endl;
            }
            void print(string b)
            {
                cout << a << " " <<b<< endl;
            }
};
int main()
{
    A a("akash");
    a.print();
    a.print("dungrani");
}