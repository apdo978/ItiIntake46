#include <iostream>
using namespace std;
// #include "itilearnoop.cpp"

class creature {
public:
virtual void Move()=0;//abstract function pure virtual function 

};
class animal :public creature{
 public:
 void Move(){
cout<<"animal Move";
 }

};
class Dog:public animal{
     public:
 void Move(){
cout<<"Dog Move";
 }
};

int main() {
         creature* cret = new animal();
      cret->Move();
 
    return 0;
}