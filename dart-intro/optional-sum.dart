int optionalSum(int a, int b, [int? c = 0]) {
  return a + b + c!;
}

void main() {
  print(optionalSum(2, 3));
  print(optionalSum(2, 3, 4));
}
