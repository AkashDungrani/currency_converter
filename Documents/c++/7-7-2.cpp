#include<iostream>
#include<string.h>
using namespace std;
int main()
{
    int i,len;
    char a[200];
    cout<<"enter the string=";
    cin>>a;

    len=strlen(a);
    for(i=0;i<len;i++)
    {
        if(a[i]<=65 && a[i]>=90)
        {
            cout<<a[i]+32;
        }
        else if(a[i]<=97 && a[i]>=122)
        {
            cout<<a[i]-32;
        }

    }
    cout<<"toggle string="<<a;
}