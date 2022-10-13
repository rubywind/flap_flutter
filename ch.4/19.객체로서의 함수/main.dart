void printNumber(int number) {
  print(number);
}

void processNumbers(List<int> numbers, Function process) {
//void processNumbers(List<int> numbers, Function(int) process)

  for (int number in numbers) {
    process(number);
  }
}

void main() {
  final numbers = [1, 2, 3];
  processNumbers(numbers, printNumber);
}
