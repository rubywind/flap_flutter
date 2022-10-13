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
    // 강의에서 요구하는 출력 형식이, 오로지 숫자만 출력할 것을 요구하므로, 아래 줄은 주석처리 했습니다.
    //print("Price is $price.");
    print(price);
  }
}

void main() {
  var coffee = new Coffee(2);
  coffee.describe();
}
