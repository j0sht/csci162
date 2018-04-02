#include <iostream>
using namespace std;

int num, j, one(1), answer, maxj;

void inputDecimal(int& n) {
    cout << "Enter decimal number: ";
    cin >> n;
}

void clearNumber(int& n) {
    n = 0;
}

void loop() {
    answer += num;
    num += one;
    j += one;
    if ((j - maxj) <= 0)
	loop();
    else
	cout << answer << endl;
}

int main() {
    clearNumber(answer);
    inputDecimal(num);
    inputDecimal(maxj);
    clearNumber(maxj);
    loop();
    return 0;
}
