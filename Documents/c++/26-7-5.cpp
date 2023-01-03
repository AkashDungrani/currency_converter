#include<iostream>
using namespace std;
class Age
{
   private:
          int age;

   public:
         void setdata()
		 {
			 cout << "enter your age"<< endl;
			 cin >> age;
		 }

		 void getdata()
		 {
			 cout << "your age is " << age << endl;
		 }

};

int main()
{
	Age a1;
	a1.setdata();
	a1.getdata();
}