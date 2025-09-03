#include <iostream>
using namespace std;
#include<iomanip>
#include <string>
#include <cmath>
#include <algorithm>

// int : 32 Bit integer.
// long long : 64 bit integer
// Char : 8 bit Characters & symbols
// Float : 32 bit real value
// Double : 64 bit real value
// (s1%10) => last number 
// (s1%100) => last two number  and so on 
// sum of 1 to N n(n+1)/2 el gam3 el 2oal 
// #include <cmath> => for rounding cieling floor 
// char (int) || int (char) char<==> ascii 
//a **b = b log(a) => with folats 
//  price before discount  (price * 100)/(100-discount)  discount 
// setprecision(2) to round to n numbers
// a => 97
// z => 122
// A => 65
// Z => 90
// binary x OR operator => converting int to bin ^
// in prime numbers any digit will have first divsable on his half
// to get even number alwayes multibly by even 
// sperate each componant of your loop 
// int powr(int num,int pow){
    
// int exam=num;
// int temp=exam;
// if (pow ==0){
//     return 1;
// }

//     for (int o=0;o<pow-1;o++ ){
// exam=exam*temp;
// }

// return exam;
// }


int main() {
int  n;
cin>>n;
long long l,r,sum=0,sum1=0,min1=0,max1;
for (int i=0;i<n;i++){
cin>>l>>r;


if (l<=r){
    l=l-1;
    sum =(l*(l+1))/2;
sum1=(r*(r+1))/2;
    min1=sum;
    max1=sum1;
}else {
    r=r-1;
    sum =(l*(l+1))/2;
sum1=(r*(r+1))/2;
     min1=sum1;
    max1=sum;
}

cout<<max1-min1<<endl;
sum=0;
sum1=0;
}




}








