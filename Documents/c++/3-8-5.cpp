#include<iostream>
using namespace std; 
class Akash 
{ 
private: 
    float num,b=10,h=5; 
    float width,height; 
 
public: 
    Akash(float num) 
    { 
        this->num=num; 
 
        cout << endl << "Area of Square : " << num * num << endl; 
    } 
    int set(float width, float height) 
    { 
        this->width = width; 
        this->height = height; 
 
        cout << endl 
             << "Area of Rectangle : " << width * height << endl; 
 
        return 0; 
    } 
    ~Akash() 
    { 
        cout << endl 
             << "Area of Trianhgle : " << (b * h) / 2 << endl; 
    } 
}; 
int main() 
{ 
    Akash A1(5);
    A1.set(10,5); 
}