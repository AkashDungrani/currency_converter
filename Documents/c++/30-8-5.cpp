#include<iostream>
using namespace std; 
 
class A 
{ 
  protected: 
      int a; 
   
  public: 
      virtual void setA() 
      { 
          cout << endl 
               << "A = "; 
          cin >> a; 
      } 
}; 
class B : virtual public A 
{ 
  protected: 
      int b; 
   
  public: 
      void setB() 
      { 
          cout << "B = "; 
          cin >> b; 
      } 
}; 
class C : virtual public A 
{ 
  protected: 
      int c; 
   
  public: 
      void setC() 
      { 
          cout << "C = "; 
          cin >> c; 
      } 
}; 
class D : public B, public C 
{ 
  protected: 
      int d; 
   
  public: 
      void setD() 
      { 
          cout << "D = "; 
          cin >> d; 
   
          cout << endl 
               << "Addition of all elements : " << a + b + c + d << endl 
               << endl; 
      } 
}; 
 
int main() 
{ 
    D d1; 
 
    d1.setA(); 
    d1.setB(); 
    d1.setC(); 
    d1.setD(); 
}