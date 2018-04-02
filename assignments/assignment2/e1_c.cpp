#include <iostream>
using namespace std;

void inputDecimal(int& n) {
    cout << "Enter decimal number: ";
    cin >> n;
}

void clearNumber(int& n) {
    n = 0;
}

int main() {
    int num(0), j(0), one(1), answer(0), maxj(0);
    clearNumber(answer);
    inputDecimal(num);
    inputDecimal(maxj);
    while ((j-maxj) <= 0) {
	answer += num;
	num += one;
	j += one;
    }
    cout << answer << endl;
    return 0;
}
