//순차적으로 One, Two, Three 를 하지만 Two를 지나갈때 Future()함수를 통해서 1초간 나중에 Future!!를 기억해놓고 있기떄문에
//1초뒤 마지막에 대기하고 실행한다.
void main(List<String> args) {
  printOne();
  printTwo();
  printThree();
}

printOne() {
  print('One!!');
}

void printTwo() async {
  Future.delayed(Duration(seconds: 1), () {
    print('Futrue!!');
  });
  print('Two');
}

void printThree() {
  print('Three!!');
}
