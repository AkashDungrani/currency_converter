#include <iostream>
#include<string.h>
using namespace std;
class Mother
{
public:
void display()
{
cout << "HII I AM MOTHER "<< endl;
};
};
class Daughter : public Mother
{
public:
void display()
{
cout << "HEY i AM DAUGHTER"<< endl;
};
};
int main()
{
Mother m;
Daughter d;
m.display();
d.display();
return 0;
}