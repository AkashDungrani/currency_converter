#include<iostream>

using namespace std;
class house
{
   int room;
   int l;
   int h;
   int b;

   public:
         void setdata()
		 {
			 cout << "enter number of room=" << endl;
			 cin >> room;

			 cout << "enter room length=" << endl;
			 cin >> l;
			 cout << "enter room hight=" << endl;
			 cin >> h;
			 cout << "enter room breadth=" << endl;
			 cin >> b;
		 }

		 void getdata()
		 {
			 cout << "number of room in house is " << room <<endl;
			 cout << "room length=" << l << "hight =" << h << "bredth= " << b << endl;
		 }

};

int main()
{
	house r1,h1;
	r1.setdata();
	r1.getdata();

	h1.setdata();
	h1.getdata();
}
