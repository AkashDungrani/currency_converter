#include <iostream> 
using namespace std; 
 
class First 
{ 
  protected: 
    int a; 
    int b; 
    string exp = "Can't Divide By ZERO!"; 
  
  public: 
    First() 
    { 
      cout << "\n\nFirst Programe:\n"; 
      cout << "Enter A : "; 
      cin >> a; 
      cout << "Enter B : "; 
      cin >> b; 
  
      try 
      { 
        if (b == 0) 
        { 
          throw exp; 
        } 
        else 
        { 
          cout << endl 
            << "Division : " << a / b << endl; 
        } 
      } 
      catch (string n) 
      { 
  
        cout << endl 
          << n << endl; 
      } 
    } 
}; 
int main() 
{ 
    First f1;
}