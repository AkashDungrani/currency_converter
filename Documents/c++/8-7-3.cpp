#include<iostream>
using namespace std;
int main()
{
    char a[200];
    int i;
    cout<<"enter string=";
    cin>>a;

    for(i=0;a[i]!='\0';i++)
    {
        if(a[i]>='a' && a[i]<='z')
        {
            a[i]-=32;
        }
        else if(a[i]>='A' && a[i]<='Z')
        {
            a[i]+=32;
        }    
    }
    cout<<"tohggle case="<<a;
    return 0;
}