class Coffee {
  int price = 0;
  int shot = 0;

  Coffee(int shot) {
    this.shot = shot;
    price = shot * 1000;
  }

  Coffee.u(this.shot) {
    price = shot * 1000;
  }

  void describe() {
    print(price);
  }
}

class Latte extends Coffee {
  int milk = 0;
  Latte(int shot, this.milk) : super(shot) {
    price = super.shot * 1000 + milk * 500;
  }
}

void main() {
  Coffee coffee = new Coffee(2);
  coffee.describe();

  Latte latte = new Latte(2, 3);
  latte.describe();
}
