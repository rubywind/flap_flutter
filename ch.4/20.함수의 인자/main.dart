int add(int a, int b) => (a + b);

int process(int Function(int, int) function) => function(1, 2);

void main() {
  print(process(add));
}
