#include<iostream>
using namespace std;
int main()
{
   int i,n;
   cout<<"enter the size of array=";
   cin>>n;

   int a[n];
   cout<<"enter the elements of array="<<endl;
   for(i=0;i<n;i++)
   {
       cin>>a[i];
   }
   for(i=0;i<n;i++)
   {
       if(i%2!=0)
       {
           cout<<"even no."<<a[i]<<endl;
       }
   }
}