#include<iostream>
using namespace std; 
class UpperLower 
{ 
	private: 
	    string A; 
	 
	public: 
	    UpperLower(string A) 
	    { 
	        this->A = A;	 
	        for(int i=0;A[i]!='\0';i++) 
	        { 
	            if(A[i]>='a' && A[i]<='z') 
	            { 
	                A[i] -= 32; 
	            } 
	        } 
	 		 cout << endl << "Convert to Uppercase : " << A << endl; 
	    } 
	    ~UpperLower() 
	    { 
	        for(int i=0;A[i]!='\0';i++) 
	        { 
	            if(A[i]>='A' && A[i]<='Z') 
	            { 
	                A[i] += 32; 
	            } 
	        } 
	 		cout << endl << "Convert to Lowercase : " << A << endl; 
	    } 
}; 
int main() 
{ 
    string d; 
 
    cout << "Enter a string : "; 
    getline(cin, d); 
 
    UpperLower u1(d); 
}