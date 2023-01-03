#include <iostream>
using namespace std;

inline int fact(int n)
{
    if (n <= 1)
    {
        return 1;
    }
    else
    {

        return n * fact(n - 1);
    }
}
int main()
{
    int a, ans;

    cout << "Enter Number = ";
    cin >> a;

    ans = fact(a);

    cout << "Factorial : " << ans;
}