//순차적으로 One, Two, Three 를 하지만 Two를 지나갈때 Future()함수를 통해서 1초간 나중에 Future!!를 기억해놓고 있기떄문에 마지막에 대기하고 실행하였지만
//아래의 경우 Futrue 앞에 await 키워드를 설정해주면 Future를 2초간 설정해놓은 부분부터 멈춘후 다시 순차적으로 실행한다.
//awiat 키워드를 이용하면 printTwo()를 호출된 다른 클래스 또는 함수에서는 프로세스가 끝날 때까지 기다리기 때문에 잘 사용해야한다.

void main(List<String> args) {
  printOne();
  printTwo();
  printThree();
}

printOne() {
  print('One!!');
}

void printTwo() async {
  await Future.delayed(Duration(seconds: 2), () {
    print('Futrue!!');
  });
  print('Two');
}

void printThree() {
  print('Three!!');
}
