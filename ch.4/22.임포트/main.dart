// 'dart:collection' 라이브러리에서 FIFO 방식의 리스트 Queue를 사용합니다.
import 'dart:collection';

void main() {
  Queue numQ = new Queue();
  numQ.addAll([100, 200, 300]);
  Iterator i = numQ.iterator;

  while (i.moveNext()) {
    print(i.current);
  }
}
