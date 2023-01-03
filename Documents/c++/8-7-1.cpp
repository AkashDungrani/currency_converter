#include<iostream>
using namespace std;
int main()
{
    char a[200],i;
    cout<<"please enter input";
    cin>>a;

    
    for(i=0;a[i]!='\0';i++)
    {
        if(a[i]>='0' && a[i]<='9')
        {
            cout<<"chracter is numeric";
        }
        else
        {
            cout<<"not numeric";
        }

    }
    return 0;

}