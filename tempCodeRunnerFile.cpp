//#include "class file name"
 
// // abstraction hide the data  and use getters and setters  
// // abstract class
// // struct has no abstraction publuc by default  if u want it privte type privte:
// // class has abstraction so by default the data is privte 
// // access modifiers public (methods )- privte Ex:(data Member) 
// // garbage collector works by deleting any container or value in heap that 
// // has no referance 
// // when the stack end the referance end 
// // . because p is an object
// //  using -> because p is a pointer
// // p->x is just shorthand for (*p).x
// // constructor should be the same name of the class no return type 
// // called by compiler 
// // we donnnnnt call the constructor   
// // use setters on the constructor to keep the conditions or make the condetions again in the constructor 
// // privte constructor can be made privte 
// // to prevent any one from creating objects from this class => context in database 
// // use in singlton pattern to create onley one object from the class 
// // making the object inside the class and returnning it 
// // how to make it 

// class singlton{

//     string name;
//     int age;
//     bool alive;
//     singlton(string _name,int _age,bool _alive){
//         name =_name;
//         age= _age;
//         alive =_alive;
//     }
    
//     // نسخة واحدة فقط
//     // static Singleton* instance;

//     singlton MakeObje(string _name,int _age,bool _alive){
//         return singlton (_name,_age,_alive);
//     }
// };
// // destructor ~the same class name() should be with no paramaters 
// // most commen use delete pointers called when the object die 
// // class steps 
// // data members , steters getters , constructor , functions , destructors 
// // chain constructor constructor call another constructor Ex:
// class Complex {
//     private:
//      int image;
//      int real;
//      int *arr;
//     //  static 
//     static int counter; // when it is privte u will use setters and getters 
//     public:
//     // contructor chain 
//     Complex() : Complex(1)//or   Complex(1,1); 
//     {
//         // this will called after finshs the cgain 
//         // image=1;
//         // real=1;
//     }
//     Complex(int _real):Complex(_real,1) 
//     {
//         // real=_real;
//         // image=1;

//     }
//     Complex(int _real , int _image){
//         image = _image;
//         real = _real;
//         arr = new int [2];

//     }
//     // copy constructor taking a referancd object from the class 
//     // Complex c1 = c2;
//     Complex(Complex &c){
//           real = c.real;
//      image = c.image;
//      arr = new int[2];
// for(int i =0 ; i<2;i++){
// arr[i] = c.arr[i];
// }
//    }
//      void setImag(int _image){
//         image = _image;
//      }
//      void setreal(int _real){
//         real = _real;

//      }
//      int getimag(){
//         return image;
//      }
//      int getreal(){
//         return real;
//      }
//      Complex add(Complex obj){
//         Complex result;
//         result.real = obj.real + real;
//         result.image = obj.image + image;
// // obj.real و real هما من نفس الكلاس → فالمترجم بيسمح بالوصول للـ private أعضاء بتاعتهم.
// // رغم إنهم private، لكن داخل نفس الكلاس، مش ممنوع.
//         return result;

//      }
//      Complex operator +(Complex obj){
//         Complex result;
//         result.real = obj.real + real;
//         result.image = obj.image + image;
//         return result;

//      }
//      Complex operator ++(int)//prefic ++c
//      {
//         image++;
//         real++;
// return *this;

//      }
//      Complex operator ++() //postfix c++
//      {
//         Complex temp =*this;
//         image++;
//         real++;
// return temp;
//      }
//      bool operator < (Complex obj) //postfix c++
//      {
//     if (real < obj.real && image < obj.image)
//     return true;
//     else 
//    return false;
      
 
//      }
//      friend ostream& operator <<(ostream &out  , Complex c);
//     friend  istream & operator  >>(istream &out , Complex &c);
//     // deep copy 
//     void operator = (Complex c){
//      real = c.real;
//      image = c.image;
//     //  arr = new int[2];
// for(int i =0 ; i<2;i++){
// arr[i] = c.arr[i];
// }

     
//     }
// };
// // default value for the static member 
// int Complex::counter = 0;
// // cout handling = cout .operator <<
//  ostream& operator  <<(ostream &out , Complex c){
// out<<c.real<<"+"<<c.image;
// return out;
//  }
//  istream & operator  >>(istream &in , Complex &c)//passing by value will not change the results 
// //  so u should pass the referance 
//  {
// in>>c.real;in>>c.image;
// return in;
//  }
// // operator overloading 
// // on the left side alwayes this object + the other object 
// // complex c3 = c.add(c2) instead we use 
// // c+ c2 so + = .add => complex c3 = c.operator +(c2)
// // it must called operator and the sign u want so to be knwoen with the compiler
// // also copy const called evrey time u return object from the class inside a function 
// // or making giveng the function an object 
// // we are giving the referance to the copy constructor so we will not making a new obj and avoid stack ovel flow 


// class employe{
//     string name;
//     int age;
//     string address;
//     double salary;
//     public:
//     void SetName(string _Name){
//         this->name = _Name;
//     }
//     string GetName();
//     friend Complex operator + (int num,Complex c);
// };
// string employe::GetName(){
// return name;
// }
// // friend functions 
// // declare it in the class 
// Complex operator + (int num,Complex c){
//     Complex p;
// return p;
// }
// // shallow copy & deep copy 
// // shallow copy copy with out deffrancing even make the pointers pointing to the same 
// // deep copy  if faced apointer making a new arr with the same value 
// // deep copy u need to over load the = operator 
// // by default compiler making same properties of differant object equal each others 
// // copy constructor by default making shallow copy 
// // copy constructor taking an already mad object from the class and making a shallow copy 
// // syntax: complex c1 =c2 this is differant
// //  from c1 =c2

// // *********************
// // static variabels 
// // *********************
// // varible for class for all objects counter and not specialized for a specific object 
// // shared between all objects and class ;
// // static functions take only static variabels 
// // static functions not takeing this argument 
// // function specialized to the class shared between all objects 
// // its default value declared out side the class 
// // class::name= value
// // if the class is static all functions included are static
// // ===========================
// // relations between classes
// // ===========================
// // 4-relations 
// // 1st composition 
// // class a contain consist of  class b
// // b cannot live without a
// // b cannot used by any othrt class 
// // 2nd aggregation class a has b
// // class b can live without a 
// // class a have pointer pointing to class b 
// // any other class can has a pointer  to class b 
// // 3rd assosiation 
// // class a use class b 
// // class b is not a member  as composition 
// // class a not pointing to class b as aggregation 
// // only class a have a function that use class b
// // 4-inheritance 
// // class a is class b
// class Wall{
//     int heigt,width;
//     public:
//    int getheigt(){
//     return heigt;
//    }
//    void setheigt(int _heigt){
//     heigt=_heigt;
//    }
//    int getwidth(){
//     return width;
//    }
//    void setwidth(int _width){
//     width=_width;
//    }
//    Wall():Wall(1,1)
//    {
//    };
//    Wall(int _heigt,int _width){
//     heigt=_heigt;
//     width=_width;
//    };
// //    Wall(Wall &l){}; if pointer needed and to preform deep copy 
// } ;
// class chair;
// // Ex: 1 composition 
// class Room{
//     string color;
//     Wall w1,w2; //class room has objects from class wall
//     // thiese objects live as the class live and die with it and they are inside it 
//     Wall arr[4]; // to pass an array to function u should pass it as pointer so changes inside the 
//     // function take place 
//     // if u passed it as it is it will take a shallow copy(bitwise copying )
//     chair *ch; //2nd relation aggregation class room has pointer to object from class chair 
//     chair *charr[2];
//     public:
//      void setarr(Wall* arr){
//         for(int i=0;i<4;i++){
//             this->arr[i]=arr[i];
//             i++;
//         }
//      };
//      Wall* getarr() // because it is a composition relation we can not return the array or the direct arr 
//     //  we will make  a copy from it and return it 
//      {
// Wall* temparr=new Wall[4];
// for(int i =0;i<4;i++){
//     temparr[i]=arr[i];
//     i++;
// }
//         return temparr;
//      }
// void setWall1(Wall w){
// w1 =w;
// }
// Wall getWall1() //do not return Wall* pointer its violate the abstracion specially in composition relation
// {
//     return w1;
// }
// void setWall2(Wall w){
// w2 =w;
// }
// Wall getWall2() //do not return Wall* pointer its violate the abstracion specially in composition relation
// {
//     return w2;
// };

//  Room(Wall w1,Wall w2){
//     this->w1 = w1;
//     this->w2 = w2;
// }
// // aggregation relation
// void setchair(chair *nchair){
// ch =nchair ;
// }
// chair* getchair (){
//     return ch;
// }
// void setchairarr(chair *chairarr[]) //**  or *name[] declarations of pointer to pointer 
// {
// for(int i =0; i<2;i++){
//     charr[i]=chairarr[i];
// }
// }
// chair** getchairarr ()//pointer to pointer return 
// {
//     return charr;
// }

// };

// // Ex: 2 aggregation 
// class chair{
//     string color;
//     public:
//     chair (string _color){
//         color = _color;
//     }
//       string getcolor(){
//     return color;
//    }
//    void setcolor(int _color){
//     color=_color;
//    }
//    void whoami(){
//     cout<<"parent";
//    }
// protected:// can be accessed (partilly privte but public for the classes) from the childs
// //  but not from the objs

// };
// // =====================
// // inheritance 
// // =====================

// // class child : public / privte  parent{} => public the methodes and data member available to the object created
// class inher :public chair{
//     // inher():chair("red")
//     // {}
//     inher(string x):chair(x)
//     {}
//     // privte members of parent (only accessable from the class) cannot be accessed dirctly from the inhrting class 

//     // hideing not over rideing 
//  void whoami(){
//     chair::whoami();//if u want to call it 
     
//     cout<<"child";
//    }
// };
// // object of inheritad class work by creating nd object from the parent class first then
// // include it in the child obj 
// // so u r calling the parent constructor each time u r making obj from the child 
// // by default the child class calling its default constructor and the parent default constructor 
// // if the parent have constructor not the default one so u need to declare in the child which 
// // constructor should the child call from the parent;
// // by constructor chainning
// // hideng concept in inhertance 
// // if we have a function tn the parent in child class if we write it again 
// // it will  hide the inherited one 
// // =====================
// //  types of inheritance inheritance 
// // =====================
// // 1-public 2-privte 3-protected
// // class child : public / privte  parent{} => public the methodes and
// //  data member available to the object created
// // inherited data member will be protected in the child class
// // privte inherited data member will be privte in the child class 

// // =====================
// //  multiple inheritance
// // canceled in other langauges 
// // =====================
// // class child :(virtual if needed) public father,mother{}
// // if both inhertied classes have sam func EX:Whoami()
// // so virtual will declare which one to take bu default first virtual will be called 
// // u should call both constructors 
// // =====================
// //  multiple level inheritance
// // =====================
// // class parent{}
// // class child : father{}
// // class Grasndchild : child{}
// // =====================
// //  polymorphism
// // =====================
// // 1-overloading =>function    2- overrideing 
// //             =>operator
// // 2-overrideing
// // class parent {}
// // class child : parent {}
// // parent is smaller than child
// // if we parent *pr = new child() {pointing to parent object inside}; (look to the object) this valid  child object is containning object from parent 
// // so pointer can point to it because it is included 
// // also the pointer will see only data members of parent object only ;
// // if we child *pr = new parent(){can't point to child object inside}; 
// //  invalied parent doesn't include child 
// // overriding is  giving access to afunction out side scope of the pointer by 
// // using virtual parentFunc () this mean that go and call the other function with the same signeture 
// // in the child class (if not found call the original one )
// // overrideing in c++ Ex: