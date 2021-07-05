#include <iostream>
#include <fstream>

using namespace std;

int main() {
  ifstream cin("GT_data");
  
  string outfile, a, b, c, d, e;
  while(cin >> outfile >> a >> b >> c >> d >> e) {
    ofstream fout("./gt/" + outfile + ".txt");
    cout << a << endl;
    fout << a << " " << b << " " << c << " " << d << " " << e << endl;
  }
}
