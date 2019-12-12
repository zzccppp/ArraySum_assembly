#include <iostream>

extern "C" int CalcArraySum_(const int *x , int n);
extern "C" int CalcArraySquares_(int *y,int const *x,int n);

int CalcArraySumC(const int *x, int n) {
	int sum = 0;
	for (int i = 0; i < n; i++) {
		sum += *x++;
	}
	return sum;
}

int main() {
	int x[] = { 1,2,3,4,5,6,7,8,9,0 };
	const int n = sizeof(x) / sizeof(int);
	int sum1 = CalcArraySum_(x, n);
	int sum2 = CalcArraySumC(x, n);

	int y[n];
	CalcArraySquares_(y, x, n);

	std::cout << sum1 << " " << sum2 << std::endl;
	return 0;
}