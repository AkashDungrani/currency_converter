#include<iostream>
using namespace std;

class car
{
   private:
          int id;
		  char cnm[200];
		  char clr[20];
		  char model[50];
		  int ryear;

    public:
	      void setdata()
		  {
			  cout << "Enter car id=";
			  cin >> id;
			  cout << "Enter car company name=";
			  cin >> cnm;
			  cout << "Enter car colour=";
			  cin >> clr;
			  cout << "Enter car model=";
			  cin >> model;
			  cout << "Enter car release year=";
			  cin >> ryear;
		  }	

		  void getdata()
		  {
			  cout << "car id is =" << id << endl;
			  cout << "car company name is =" << cnm << endl;
			  cout << "car colour is =" << clr << endl;
			  cout << "car model is =" << model << endl;
			  cout << "car release year is =" << ryear << endl;
		  }	  
          
};

int main()
{
	car c1,c2,c3,c4;
	c1.setdata();
	c2.setdata();
	c3.setdata();
	c4.setdata();

	c1.getdata();
	c2.getdata();
	c3.getdata();
	c4.getdata();


}