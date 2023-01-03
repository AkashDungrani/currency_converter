#include <iostream> 
using namespace std; 
 
class A 
{ 
private: 
    int a; 
 
public: 
    void setA() 
    { 
        cout << endl 
             << "Value of A = "; 
        cin >> a; 
    } 
 
    friend void ans(); 
}; 
class B 
{ 
private: 
    int b; 
 
public: 
    void setB() 
    { 
        cout << endl 
             << "Value of B = "; 
        cin >> b; 
    } 
 
    friend void ans(); 
}; 
 
void ans() 
{ 
    A a1; 
    B b1; 
 
    a1.setA(); 
    b1.setB(); 
 
    cout << endl 
         << "Addition of A and B : " << a1.a + b1.b << endl 
         << endl; 
} 
 
int main() 
{ 
    ans(); 
}