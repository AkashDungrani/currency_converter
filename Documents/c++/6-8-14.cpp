
#include <iostream> 
using namespace std; 
 
class Supermarket 
{ 
protected: 
    string user_id; 
    string password; 
    int item_num[2], quantity; 
    string item_nm, tax, discount; 
 
public: 
    Supermarket() 
    { 
        cout << endl 
             << "Enter Valid User Id : "; 
        fflush(stdin); 
        getline(cin, user_id); 
        cout << "Enter Valid Password : "; 
        getline(cin, password); 
 
        if (password >= "0" && password <= "9" || password >= "a" && password <= "z") 
        { 
            cout << endl 
                 << "User Id : " << user_id << endl; 
            cout << "Password : " << password << endl; 
        } 
        else if (user_id == " ") 
        { 
            cout << "USER ID INVALID..." << endl; 
        } 
        else if (password != "&") 
        { 
 
            cout << "PASSWORD INVALID..." << endl; 
        } 
 
        for (int i = 0; i < 2; i++) 
        { 
            cout << endl 
                 << endl 
                 << "Enter Item Number : "; 
            cin >> item_num[i]; 
            cout << "Enter Item Name : "; 
            fflush(stdin); 
            getline(cin, item_nm); 
            cout << "Enter Item Quantity : "; 
            cin >> quantity; 
            cout << "Enter Item Tax(%) : "; 
            fflush(stdin); 
            getline(cin, tax); 
            cout << "Enter Item Discount(%) : "; 
            getline(cin, discount); 
        } 
    } 
    ~Supermarket() 
    { 
        for (int i = 0; i < 2; i++) 
        { 
            for (int j = i; j < 2; j++) 
            { 
                if (item_num[i] > item_num[j + 1]) 
                { 
                    int temp = item_num[i]; 
                    item_num[i] = item_num[j + 1]; 
                    item_num[j + 1] = temp; 
                } 
            } 
        } 
        cout << endl 
             << "Item Number sorted in the ascending order are: " << endl; 
        for (int i = 0; i < 2; i++) 
        { 
            cout << endl 
                 << "Item Number    : " << item_num[i] << endl; 
            cout << "Item Name      : " << item_nm << endl; 
            cout << "Item Quantity  : " << quantity << endl; 
            cout << "Tax            : " << tax << endl; 
            cout << "Discount       : " << discount << endl; 
 
            cout << "\n================================\n"; 
        } 
    } 
}; 
 
int main() 
{ 
 
    for (int i = 0; i < 2; i++) 
    { 
        Supermarket s1[i]; 
    } 
}