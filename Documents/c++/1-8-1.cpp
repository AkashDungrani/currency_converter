#include<iostream>
using namespace std;

class krish;
class Akash
{
     private:
            int hours=10;
            int minutes=15;
            int seconds=50;
    public:
          void get()
          {
              cout << "Hours : Minutes : seconds" << endl
                   << hours << ":" << minutes << ":" << seconds << endl;
          }
          friend void zeel(Akash,krish);        
};

class krish
{
    private:
            int hours=5;
            int minutes=45;
            int seconds=30;
    public:
          void get()
          {
             cout << "Hours : Minutes : seconds" << endl
                  << hours << ":" << minutes << ":" << seconds << endl; 
          }  

          friend void zeel(Akash,krish);      
     
};

void zeel(Akash a,krish k)
{
    cout << "Addition of Time is : " << a.hours + k.hours << ":" << a.minutes + k.minutes << ":" << a.seconds + k.seconds << endl; 
}

int main()
{
    Akash a1;
    krish k1;
    a1.get();
    k1.get();
    zeel(a1,k1);
}