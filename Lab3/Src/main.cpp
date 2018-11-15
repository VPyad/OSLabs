#include <iostream>
#include <string>
#include <sstream>

using namespace std;

double calculateK(int n, int m);

int parseNumber()
{
    string input = "";
    int number = 0;

    while (true) {
        getline(cin, input);

        stringstream myStream(input);
        if (myStream >> number)
            break;
        cout << "Invalid number, please try again" << endl;
    }

    return number;
}

int main() {
    int n = 0, m = 0;

    cout << "Enter n:" << endl;
    n = parseNumber();

    cout << "Enter m:" << endl;
    m = parseNumber();

    cout << "n = " << n << endl << endl;
    cout << "m = " << m << endl << endl;

    double k = calculateK(n, m);

    cout << "k = " << k << endl << endl;

    return 0;
}