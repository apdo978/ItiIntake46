#include <iostream>
using namespace std;

int main() {
string word;
string compword,revcompword;
cin>>word;
compword=word;
revcompword=word;
string arr;
for (int i = 0; i < word.length(); i++)
{
    /* code */
    if (word[i] == '?'){
continue;
    }
    arr.push_back(word[i]);
}

int counter =0;
for (int i = 0; i < word.length(); i++)
{
    /* code */
    if (word[i] == '?'){
       
    compword[i] = arr[counter];
    revcompword[i] = arr[(arr.length()-1)-counter];
counter++;

    }
  
}
string temp = compword;
string temp2 = revcompword;
cout<<compword;
cout<<compword;


if (compword  ==  temp ){
    cout<<compword<<"="<<temp<<"one ";
    return 0;

}
else if (revcompword == temp2){
    cout<<temp2 <<"two";
    return 0;

}
cout<<-1;

    return 0;
}