/* int maxNum(int a, int b, int c) {
  if (a >= b && a >= c) {
    return a;
  } else if (b >= a && b >= c) {
    return b;
  } else {
    return c;
  }
} */

int maxNum(int a, int b, int c) {
  return (a > b && a > c) ? a : (b > c ? b : c);
}


void main() {
  print(maxNum(1, 2, 3));
  print(maxNum(0, 0, 0));
  print(maxNum(-1, -5, 0));
}