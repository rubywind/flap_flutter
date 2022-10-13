void main() {
  // (1) for문
  for (int i = 0; i < 2; ++i) {
    print(i);
  }

  // (2) while문
  List<int> numbers = [1, 2, 3];
  while (numbers.isNotEmpty) {
    int firstNumber = numbers.first;
    print(firstNumber);
    numbers.removeAt(0);
  }
}
