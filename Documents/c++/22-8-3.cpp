#include<iostream>
using namespace std;
class cricket
{
   protected:
            int over;


};
class test : public cricket
{
    public:
          void gettotalover(int a)
          {
              cout << " test over="  << a << endl;

          }
};
class t20 : public test
{
    public:
          void gettotalover(int a)
          {
              cout << " t20 over="  << a << endl;
              
          }
};
int main()
{
    t20 t1;
    t1.gettotalover(20);
    t1.test::gettotalover(90);

}