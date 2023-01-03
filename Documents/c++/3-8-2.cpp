#include <iostream>
using namespace std;

class Cafe
{
	private:
	    int id;
	    string name;
	    int rating;
	    string location;
	    int estyear;
	    int stfqty;
	    string type;

	public:
	    Cafe(int id, string name, int rating,
	            string location, int estyear,
	            int stfqty, string type)
	    {
	
	        this->id = id;
	        this->name = name;
	        this->rating = rating;
	        this->location = location;
	        this->estyear = estyear ;
	        this->stfqty = stfqty;
	        this->type = type;
	    }

    Cafe()
    {
        cout << "Cafe id : ";
        cin >> id;
        cout << "Cafe Name : ";
        cin >> name;
        cout << "Cafe Staff quantity : ";
        cin >> stfqty;
        cout << "Cafe Ratings : ";
        cin >> rating;
        cout << "Cafe Location : ";
        cin >> location;
        cout << "Cafe Establish year : ";
        cin >> estyear;
        cout << "Cafe Type : ";
        cin >> type;
    }
    void getdata()
    {
        cout << "Cafe Id :" << this->id << endl;
        cout << "Cafe Name :" << this->name << endl;
        cout << "Cafe Staff quantity :" << this->stfqty << endl;
        cout << "Cafe Ratings :" << this->rating << endl;
        cout << "Cafe Location :" << this->location << endl;
        cout << "Cafe Establish year :" << this->estyear << endl;
        cout << "Cafe Type :" << this->type << endl;
        
    }
};

int main()
{
    int n, i;

    cout << "Enter Number of Cafe : ";
    cin >> n;

    Cafe d1[n];
    for (i = 0; i < n; i++)
    {
        d1[i].getdata();
    }
}