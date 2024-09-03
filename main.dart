void main() {
  int number = 23;
  bool isInFibonacci = checkFibonacci(number);

  if (isInFibonacci) {
    print('O número $number pertence à sequência de Fibonacci.');
  } else {
    print('O número $number não pertence à sequência de Fibonacci.');
  }
}

bool checkFibonacci(int n) {
  if (n < 0) return false;

  int a = 0;
  int b = 1;

  while (b < n) {
    int temp = a;
    a = b;
    b = temp + b;
  }

  return b == n || a == n;
}
