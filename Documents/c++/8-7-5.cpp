#include<iostream>
#include<cmath>
using namespace std;
int main()
{
   int arr[50],i,n;
   cout<<"please enter size of array=";
   cin>>n;
   for(i=0;i<n;i++)
   {
       cin>>arr[i];
   }
   cout<<"square root of element=";
   for(i=0;i<n;i++)
   {
       cout<<sqrt(arr[i])<<endl;
   }
}