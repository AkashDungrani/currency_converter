#include<iostream>
#include<string.h>
using namespace std;
class Animal
{
public:
       int age;
       char name[100];
void Set_Value()
  {
     strcpy(this->name,"Zebra");
     this->age = 18;
  }
void SetValue()
  {
     strcpy(this->name,"Dolphin");
     this->age = 10;
  }
};
class Zebra : public Animal
{
    public:

         void Get_Data()
        {
          Set_Value();
          cout << endl << endl << "Name : " << this->name;
          cout << endl << "Age : " << this->age;
        }
};
class Dolphin : public Animal
{
    public:

          void GetData()
          {
             SetValue();
             cout << endl << endl << "Name : " << this->name;
             cout << endl << "Age : " << this->age;
          }
};
 int main()
{
      Zebra o1;
      Dolphin o2;
      o1.Get_Data();
      o2.GetData();
      return 0;
}