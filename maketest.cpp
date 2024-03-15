#include<bits/stdc++.h>

using namespace std;

mt19937 rng(chrono::steady_clock::now().time_since_epoch().count());

long long Rand(long long l,long long r){
    long long x = rng();
    return x % (r - l + 1) + l;
}
signed main(){

    ios_base::sync_with_stdio(0);
    cin.tie(0);
    
    long long n = Rand(1,10000);
    cout << n;

}