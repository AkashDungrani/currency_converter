#include<iostream>
using namespace std;
int main()
{
   int a[50],i,n,cube[50];
   cout<<"please enter size of an array=";
   cin>>n;

   for(i=0;i<n;i++)
   {
       cin>>a[i];
   }

   for(i=0;i<n;i++)
   {
       cube[i]=a[i]*a[i]*a[i];
   }
   cout<<"cube is =";
   for(i=0;i<n;i++)
   {
       cout<<cube[i]<<" ";
   }

}