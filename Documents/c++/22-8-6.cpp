#include<iostream>
using namespace std;
class Distance
{
    private:
            int F,I;
    public:
            void setdistance(int a, int b)
            {
                F=a;
                I=b;
            }  
            void getdistance()
            {
                cout << "ditance in feet is =" << F << endl;
                cout << "distnace in inch is = " << I << endl;
            }
            Distance operator+(Distance d2)
            {
                Distance tmp;
                tmp.F=this->F+d2.F;
                tmp.I=this->I+d2.I;
                return tmp;
            }

};
int main()
{
    Distance d1,d2,d3;
    d1.setdistance(10,20);
    d2.setdistance(20,30);
    d3=d1+d2;
    d1.getdistance();
    d2.getdistance();
    d3.getdistance();
}