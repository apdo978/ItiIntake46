#include <iostream>
using namespace std;
#include <array>
#include <vector>

 int sum(int num1, int num2){
      return num1 + num2;
  };

  void swap(int num1,int num2){
    //   pass by value 
      int temp = num1;
      num1 =num2;
      num2 = temp ;
      cout<<"num1"<<num1;
      cout<<"num2"<<num2<<endl;
      
  }
  void swap(string num1,string num2){
    //   pass by value 
    //   int temp = num1;
    //   num1 =num2;
    //   num2 = temp ;
      cout<<"num1"<<num1;
      cout<<"num2"<<num2<<endl;
      
  }
  void swapref(int &ref1,int &ref2){
    //   pass by referance
      int temp = ref1;
      ref1 =ref2;
      ref2 = temp ;
      
  }

class Complex{
float real,imag;
static int counter ;
public:
// constructor  can be overloaded with the
// same name of the class with no return
// destructor ~className
Complex(){
real,imag = 0.00;
counter++;
};
Complex(Complex &z)// copy constructor 
{
//   عشان تدي نسخة من other، الـ compiler هيضطر يعمل نسخة جديدة من الـ object اللي إنت مرسله.
// النسخة الجديدة دي لازم تتعمل باستخدام … الكوبي كونستراكتور نفسه!
// وده هيؤدي لاستدعاء الكوبي كونستراكتور مرة تانية، والمرة التانية دي هتستدعيه تالتة … وهكذا → infinite recursion
real = z.real;
imag = z.imag;
counter++;

};

friend Complex ViewFunc(Complex &b);//only declartion not implementation
friend Complex addto();//**** passing object to add to 
~Complex(){
real,imag = 0.00;
};
void Setreal(float i);
void Setreal(int i,int y);
// void Setreal(int i,float y);
float Getreal();
static int GetCounter(){
  return counter;
};

};
int Complex::counter =0;
void Complex::Setreal(float i)
{
  this->real = i;
}
void Complex::Setreal(int i,int y=0)
{
  real = i;
}
float Complex::Getreal()
{
 return real;
};

// stand alone fuunc returnning obj from the class 
Complex StandAlone(){
  Complex b;
  return b;
};
//  friend functions  cann access privte props of classes
// violate the  abstraction concebt (hiding data )
 Complex addto(){
  Complex b;
  b.real;
  b.imag;
  return b;
 }
// to pass an object to class passing by value  this is not recommended call by ref is better 
// void func(Complex b) // as u r creating one but the function will just copy its value 
// {
//   cout<<b.Getreal()<<endl;
// }

Complex ViewFunc(Complex &b){

  cout<<b.Getreal()<<endl;
return b;
}
//func(nums); call
// operator overload


// struct (interFace) 
struct nameOfINterface{
  int age;
  string name;
} ;//like interface  in ts 

// in heap
struct point
{
  int x;
  int y;
};
 void multiply(double num1,double num2)
    { };
    void multiply(int num1,int num2){};
    point multiply(point coll1,point coll2){
      point Newcoll; 
      Newcoll.x =coll1.x *coll2.x;
      Newcoll.y =coll1.y *coll2.y;
      return Newcoll;
    };

int main(){
  nameOfINterface interface;
  interface.name="value";
  interface.age=150;
  vector<int> points ;
  nameOfINterface* inter =new nameOfINterface(); //in heab
  point* pointPtr[3];//arr of pointers
  point coll1;
  coll1.x=10;
  coll1.y=20;

  pointPtr[0]=new point();//(*pointPtr)
  pointPtr[0]->x=10;// -> because he is pointing on pointer pointing to somthing on the heap
  pointPtr[0]->y=20;
  inter->age =15;
  inter->name="name";
  int* p = new int [3];//pointer in stack pointing to first element address of the arr in heap 
  *p=0;
  *(p+1)=1;
  *(p+2)=2;
  cout<<p<<endl;
  cout<<*p;
  cout<<*(p+1);
  cout<<*(p+2)<<endl;
  vector<int>::iterator it;
  it = points.begin();
  points = {1,2,3,4};
// it ++ to increase the location in the momery 
// *it  to get the value  
  cout<<*points.begin();
  for(int point:points) //ranged loop
  {
    cout<<point;
  }

  // pointer 
  int num =100;
  // int* ptr = &num; //mem location of num with referance operator => mem loca
  cout<<endl<<"======================="<<endl;
  // cout<<ptr;
  cout<<endl<<"======================="<<endl;
  // cout<<*ptr;// dereferance operator => value of that mem location 
  Complex nums;
  float in;
  cout<<"enter IN"<<endl;
  cin>>in;
  nums.Setreal(in);
  cout<<"**0000"<<endl;
  cout<<nums.Getreal()<<endl;
  cout<<nums.GetCounter;
Complex nums2 (nums);
cout<<nums2.Getreal();//avoding bitweise copying by calling copy constructor 
ViewFunc(nums);
//   int var = 5;
// int* p = *var;
// p++;
//     cout<<*p<<endl;
//     cout<<p;
    // cout <<sum(1,5);
    int num1=1,num2=2;

   int* ptr ;
   ptr = &num1;
   cout<<ptr;
    // swap(num1,num2);
    // cout << num1<<"\n";
    // cout << num2;
//     int val = 4;
//   int & ref = val;
//     int* p =&val;
//     cout<<&ref;
// swapref(num1,num2);
//     cout << num1<<"\n";
//     cout << num2;

// int ref1 =5,ref2 =4;
// int* p = &ref1;
// int &ref = ref1;
// cout<<ref;

// swap(1,2);
// swap("h","hh");
// for (int i = 0; i < 10000; i++)
// {
//   /* code */
//   cout<<"hello c+++";
// }
// int age;
// cout<<"enter ur age"<<endl;
// cin>>age;
// cout<<age;

// static allocation 
// to create new arr in stack  int int[4] 

// dynamic allocation 
// to create new arr in heab  int arr = new int[4]

// oop 
// 1-enc,2-abstra  3-polymorphism     4-inheritance

// 2-polymorphism 
// function signature 
// 1-nameof func 2-no Of parametars 3-type of params 4- order of params 

}


