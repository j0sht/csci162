#include <iostream>
using namespace std;

// Global variables
int num, j, one(1), answer, maxj;

void storeDecimal(int& n) {
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
    if ((j - maxj) > 0) {
	cout << answer << endl;
	return;
    } else
	loop();
}

int main() {
    clearNumber(answer);
    storeDecimal(num);
    storeDecimal(maxj);
    clearNumber(maxj);
    loop();
    return 0;
}
