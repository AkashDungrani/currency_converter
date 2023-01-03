#include<iostream>
using namespace std;
class hotel
{
    private:
           int id;
           char name[20];
           char type[20];
           int rating;
           static char city[20];
           int estyear;
           int stfqut;
           int room;

    public:
           void setdata(int i)
           {
               cout << "hotel number   " << i<< endl;
               cout << "hotel id = " << endl;
               cin >> id;
               cout << "hotel name = " << endl;
               cin >> name;
               cout << "hotel type = " << endl;
               cin >> type;
               cout << "hotel rating = " << endl;
               cin >> rating;
               cout << "hotel established year = " << endl;
               cin >> estyear;
               cout << "hotel staff quantity = " << endl;
               cin >> stfqut;
               cout << "number of room in hotel is = " << endl;
               cin >> room;
           }      

          void header()
          {
              cout << "Hotel\t Id\tName\tType\tRating\tcity\tyear\tstaff\troom\n"<<endl<<"------- ------- ------- ------- ------- ------- ------- -------- -------" <<endl;
          }

          void getdata(int i)
          {
              cout <<i << "\t" << id  << "\t" << name << "\t" << type << "\t" << rating << "\t" << city << "\t" << estyear << "\t" <<stfqut << "\t" << room << endl ;
          }
};

 char hotel ::city[20]="surat";

int main()
{
    int n;
    cout << "enter number of hotel=";
    cin >> n;

    hotel h[n];

    for(int i=0;i<n;i++)
    {
        h[i].setdata(i+1);
    }
     h[0].header();

    for(int i=0;i<n;i++)
    {
        h[i].getdata(i+1);
    }
}