int namedRequiredSum({
  required int first,
  required int second,
  required int third,
}) {
  return first + second + third;
}

void main() {
  print(namedRequiredSum(first: 10, second: 10, third: 15)); 
}
