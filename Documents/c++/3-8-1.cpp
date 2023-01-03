#include <iostream>
using namespace std;

class Diamond
{
private:
    int comp_id;
    string comp_name;
    int comp_staff_quantity;
    long long int comp_revenue;
    int comp_import_raw_diamonds;
    int comp_export_diamonds;
    string comp_ceo;

public:
    Diamond(int comp_id, string comp_name, int comp_staff_quantity,
            long long int comp_revenue, int comp_import_raw_diamonds,
            int comp_export_diamonds, string comp_ceo)
    {

        this->comp_id = comp_id;
        this->comp_name = comp_name;
        this->comp_staff_quantity = comp_staff_quantity;
        this->comp_revenue = comp_revenue;
        this->comp_import_raw_diamonds = comp_import_raw_diamonds;
        this->comp_export_diamonds = comp_export_diamonds;
        this->comp_ceo = comp_ceo;
    }

    Diamond()
    {
        cout << "Company id : ";
        cin >> comp_id;
        cout << "Company Name : ";
        cin >> comp_name;
        cout << "Company Staff quantity : ";
        cin >> comp_staff_quantity;
        cout << "Company Revenue : ";
        cin >> comp_revenue;
        cout << "Company Import raw diamonds : ";
        cin >> comp_import_raw_diamonds;
        cout << "Company Export Diamond : ";
        cin >> comp_export_diamonds;
        cout << "Company CEO : ";
        cin >> comp_ceo;
    }
    void getdata()
    {
        cout << "company_id :" << this->comp_id << endl;
        cout << "company_name :" << this->comp_name << endl;
        cout << "company_staff_quantity :" << this->comp_staff_quantity << endl;
        cout << "company_revenue (per year) :" << this->comp_revenue << endl;
        cout << "company_import_raw_diamonds (no. of raw diamondsimported per year) :" << this->comp_import_raw_diamonds << endl;
        cout << "company_export_diamonds (no. of diamonds per year) :" << this->comp_export_diamonds << endl;
        cout << "company_ceo (name of CEO of the company) :" << this->comp_ceo << endl;
    }
};

int main()
{
    int n, i;

    cout << "Enter Number of company : ";
    cin >> n;

    Diamond d1[n];

    //     for (i = 0; i < n; i++)
    //     {
    //         d1[i].Setdata();
    //     }
    for (i = 0; i < n; i++)
    {
        d1[i].getdata();
    }
}