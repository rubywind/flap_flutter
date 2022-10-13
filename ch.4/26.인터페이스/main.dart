abstract class Ice {
  void addIce();
}

class BlackSugar {
  void addBlackSugar() {
    print('블랙 슈거는 흑당입니다.');
  }
}

abstract class Coffee {
  int price = 0;
  int shot = 0;

  Coffee.u(int shot) {
    this.shot = shot;
    price = shot * 1000;
  }

  Coffee(this.shot) {
    price = shot * 1000;
  }

  void describe() {
    print("Price is $price.");
  }

  void description();
}

class Americano extends Coffee implements Ice, BlackSugar {
  Americano(int shot) : super(shot);

  @override
  void description() {
    print('Americano는 에스프레소에 물을 타서 희석시킨 커피입니다.');
  }

  @override
  void addIce() {
    price += 500;
  }

  @override
  void addBlackSugar() {
    price += 300;
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
  americano.description();
  americano.describe();

  americano.addIce();
  americano.describe();

  americano.addBlackSugar();
  americano.describe();
}
