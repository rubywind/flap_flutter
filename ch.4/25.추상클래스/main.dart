abstract class Coffee {
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
    //print("Price is $price.");
    print(price);
  }

  void description();
}

class Americano extends Coffee {
  Americano(int shot) : super(shot);

  //int shot = 0;
  @override
  void description() {
    print('Americano는 에스프레소에 물을 타서 희석시킨 커피입니다.');
  }
}

class Latte extends Coffee {
  int milk = 0;
  Latte(int shot, this.milk) : super(shot) {
    price = super.shot * 1000 + milk * 500;
  }

  @override
  void description() {
    print('Latte는 오스트리아식 커피우유인 카푸치노를 미국식으로 변형한 커피입니다.');
  }
}

void main() {
  Americano americano = new Americano(2);
  americano.describe();
  americano.description();

  Latte latte = new Latte(2, 4);
  latte.describe();
  latte.description();
}
