
#include <iostream>
using namespace std;

 int factorial(int n){
    if(n<2){
        return 1;
    } 
    if(n>=2){
        return n*factorial(n-1);
    }
}

int main() {

    int n;

    cout<< "Ingrese el numero a calcular su factorial:"<<endl;
    cin>>n;

    cout<< "El factorial de "<<n <<" es "<<factorial(n);
    cout<<endl;

    return 0;


}

