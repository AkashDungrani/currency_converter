#include <iostream>
using namespace std;
 
class Time
{
private:
    int hours;
    int minute;
    int seconds;
    int T;

public:
      void setdata()
      {
          cout << "enter seconds=";
          cin >> seconds;
      }    

      void getdata()
      {
        hours=seconds/3600;
        seconds=seconds%3600;
        minute=seconds/60;
        seconds=seconds%60;
        T=seconds;

        cout << "time in hh : mm : ss" << endl << hours << ":" << minute <<":" << seconds;
      }
 
};

int main()
{
    Time T1;
    T1.setdata();

    T1.getdata();
}