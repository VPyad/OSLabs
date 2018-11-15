//
// Created by vadim on 10.11.18.
//

#include <cmath>
#include <vector>
#include <iostream>
#include <string>
#include <sstream>

using namespace std;

double calculateK(int n, int m)
{
    /*double result = 0, powedN = 0, powedM = 0;

    powedN = pow(n, 2);
    powedM = pow(m, 2);

    if (powedN >= powedM)
        result = powedN - powedM;
    else
        result = powedM - powedN;

    return result;*/

    int result = 0;
    int min = 0;
    int max = 0;

    int sq1 = 0;
    int sq2 = 0;

    if (n >= m)
    {
    	min = m;
    	max = n;
    }
    else
    {
    	min = n;
    	max = m;
    }

    vector<int> v;

    for (int i = min + 1; i < max; i++)
    {
    	double sq = sqrt(i);

    	if (sq == int(sq))
    	{
    		v.push_back(i);
    	}
    }

    int smallest_element = v[0]; //let, first element is the smallest one
	int largest_element = v[0]; //also let, first element is the biggest one
	for(int i = 1; i < v.size(); i++)  //start iterating from the second element
	{
		//cout << "v = " << v[i] << endl << endl;
    	if(v[i] < smallest_element)
    	{
       		smallest_element = v[i];
    	}
    	if(v[i] > largest_element)
    	{
       		largest_element = v[i];
    	}
	}

	cout << "lg = " << largest_element << endl << endl;
	cout << "sm = " << smallest_element << endl << endl;

	if (largest_element == smallest_element)
		result = largest_element;
	else
		result = largest_element - smallest_element;

    return result;
}
