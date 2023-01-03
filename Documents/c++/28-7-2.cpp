#include<iostream>
using namespace std;
class customer
{
 private:
        long long int mobile;
        int id,age,val;
        char nm[100],brand[50],city[50];
    
 public:
        void setdata()
        {
            
                cout << " customer id=";
                cin >> id;
                cout << " customer name=";
                cin >> nm;
                cout <<" customer age=";
                cin >> age;
                cout << " brand name=";
                cin >> brand;
                cout << " customer mobile number=";
                cin >> mobile;
                 cout << " customer city=";
                cin >> city;
                cout << " card validity =";
                cin >> val;
            
            
        } 
        void getdata()
        {
            
                cout << "customer id=" << id << endl;
                cout << "customer name=" << nm << endl;
                cout << "customer age=" << age << endl;
                cout << "brand name=" << brand << endl;
                cout << "customer mobile number=" << mobile << endl;
                cout << "customer city name=" << city << endl;
                cout << "card validity=" <<val << endl;

            
        }
};

int main()
{
        int n,i;
        cout<<"Enter the values of N: ";
        cin>>n;
        customer c[n];

        for(i=0;i<n;i++)
        {
                cout<<"------------------------"<<endl;
                cout<<" Enter values Custerm"<<i+1<<":"<<endl;
                cout<<"------------------------"<<endl;
                c[i].setdata();
        }
        for(i=0;i<n;i++)
        {
                cout<<"------------------------"<<endl;
                cout<<" Dispaly values Custerm["<<i+1<<"]:"<<endl;
                cout<<"------------------------"<<endl;
                c[i].getdata();
        }    
}