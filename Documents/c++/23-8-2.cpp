#include<iostream>
using namespace std;

class A
{
	protected: 
	float  length;
	float  width;
	float  pi=3.14;
	float height;
	float base;
	float r;
	public:
		virtual void calculate()=0;
		void area_of_circle()
		{
			cout<<"Enter the values R: ";
			cin>>r;
			cout<<"area of circle is: "<<pi*(r*r)<<endl;
		}
		void area_of_triangl()
		{
			cout<<"Enter the values height: ";
			cin>>height;
			cout<<"Enter the values base: ";
			cin>>base;
			cout<<"area of triangl: "<<(height*base)/2.0<<endl;
		}
		void area_of_rectangle()
		{
			cout<<"Enter the values length: ";
			cin>>length;
			cout<<"Enter the values width: ";
			cin>>width;
			cout<<"area of rectangle: "<<width*length<<endl;
			
		}		
};

class B : public A
{
	public:
		void calculate()
		{
			cout<<"succfully calaculate use...";
		}
};

int main()
{
	B b;
	b.area_of_circle();
	b.area_of_rectangle();
	b.area_of_triangl();
}