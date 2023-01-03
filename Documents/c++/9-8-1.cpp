#include<iostream>
using namespace std;
class RBI
{
   protected:
            float itr;
   public:
          void setitr()
          {
             cout << "enter interest rate of RBI=" ;
             cin >> itr;
          }         

          void roi()
          {
             cout << "interest rate of RBI is : " << itr << endl;
          }


};
class SBI : public RBI
{
   protected:
            float itr;
   public:
          void setitr()
          {
             cout << "enter interest rate of SBI =" ;
             cin >> itr;
          }         

          void roi()
          {
             cout << "interest rate of SBI is : " << itr << endl;
          }
};
class BOB : public RBI
{
   protected:
            float itr;
   public:
          void setitr()
          {
             cout << "enter interest rate of BOB =" ;
             cin >> itr;
          }         

          void roi()
          {
             cout << "interest rate of BOB is : " << itr << endl;
          }
};
class ICICI : public RBI
{
   protected:
            float itr;
   public:
          void setitr()
          {
             cout << "enter interest rate of ICICI =" ;
             cin >> itr;
          }         

          void roi()
          {
             cout << "interest rate of ICICI is : " << itr << endl;
          }
};
int main()
{
   SBI s1;
   BOB b1;
   ICICI i1;

   s1.RBI::setitr();
   s1.SBI::setitr();
   b1.BOB::setitr();
   i1.ICICI::setitr();

   s1.RBI::roi();
   s1.SBI::roi();
   b1.BOB::roi();
   i1.ICICI::roi();
}