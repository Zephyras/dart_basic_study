void main() async {
  //Future - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  await addNumbersAsync(1, 1);
  final result2 = await addNumbersAsyncint(2, 2);

  print('result1: $result2');
}

//? main 클래스에서 Await를 사용해서 함수에 await를 표현하기위해 이용할수 있게 하는 방법
Future<void> addNumbersAsync(int number1, int number2) async {
  print('계산 시작: $number1 + $number2');

  //서버 시물레이션
  //! Future를 안쓰고 사용한다면 cpu에서 가만히 2초간 기달린다. 다른작업을 할수 있는 상태인 것이다. 2초안에 먼가 할수 있음
  // Future.delayed(Duration(seconds: 30), () {
  //   print('계산 완료: $number1 + $number2 = ${number1 + number2}');

  //! Future를 안쓰고 사용한다면 cpu에서 가만히 2초간 기달린다.
  await Future.delayed(Duration(seconds: 3), () {
    print('계산 완료: $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료: $number1 + $number2');
}

//? main 클래스에서 Await를 사용해서 함수에 await를 표현하기위해 이용할수 있게 하는 방법
Future<int> addNumbersAsyncint(int number1, int number2) async {
  print('계산 시작: $number1 + $number2');

  //서버 시물레이션
  //! Future를 안쓰고 사용한다면 cpu에서 가만히 2초간 기달린다. 다른작업을 할수 있는 상태인 것이다. 2초안에 먼가 할수 있음
  // Future.delayed(Duration(seconds: 30), () {
  //   print('계산 완료: $number1 + $number2 = ${number1 + number2}');

  //! Future를 안쓰고 사용한다면 cpu에서 가만히 2초간 기달린다.
  await Future.delayed(Duration(seconds: 3), () {
    print('계산 완료: $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료: $number1 + $number2');

  return number1 + number2;
}
