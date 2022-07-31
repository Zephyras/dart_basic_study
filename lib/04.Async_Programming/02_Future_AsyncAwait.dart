void main() async {
  //Future - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  //! Future를 사용하여 원하는 타입 리턴받게 하면 await 사용할수 있다. Future<void>
  await addNumbersAsync(3, 3);
  addNumbers(1, 1);
  addNumbers(2, 2);
  // //2개의 파라미터
  // //delayed - 지연되다
  // // 1번 파라미터 = 지연할 기간 (얼마나 지연할건지) duration
  // // 2번 파라미터 - 지연 시간이 지난 후 실행할 함수
  // Future.delayed(Duration(seconds: 2), () {
  //   print('Delay 끝');
  // });
}

//OOP 객체지향 형태는 순차적인 형태가 있기때문에
void addNumbers(int number1, int number2) async {
  print('계산 시작: $number1 + $number2');

  //서버 시물레이션
  //! Future를 안쓰고 사용한다면 cpu에서 가만히 2초간 기달린다. 다른작업을 할수 있는 상태인 것이다. 2초안에 먼가 할수 있음
  // Future.delayed(Duration(seconds: 30), () {
  //   print('계산 완료: $number1 + $number2 = ${number1 + number2}');

  //! Future를 안쓰고 사용한다면 cpu에서 가만히 2초간 기달린다.
  await Future.delayed(Duration(seconds: 30), () {
    print('계산 완료: $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료: $number1 + $number2');
}

//? main 클래스에서 Await를 사용해서 함수에 await를 표현하기위해 이용할수 있게 하는 방법
Future<void> addNumbersAsync(int number1, int number2) async {
  print('계산 시작: $number1 + $number2');

  //서버 시물레이션
  //! Future를 안쓰고 사용한다면 cpu에서 가만히 2초간 기달린다. 다른작업을 할수 있는 상태인 것이다. 2초안에 먼가 할수 있음
  // Future.delayed(Duration(seconds: 30), () {
  //   print('계산 완료: $number1 + $number2 = ${number1 + number2}');

  //! Future를 안쓰고 사용한다면 cpu에서 가만히 2초간 기달린다.
  await Future.delayed(Duration(seconds: 30), () {
    print('계산 완료: $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료: $number1 + $number2');
}
