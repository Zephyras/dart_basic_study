void main(List<String> args) {
  List<int> numbers = [
    0,
    1,
    2,
    3,
    4,
    5,
  ];

  // int total =
  //     numbers.fold(0, (previousValue, element) => previousValue + element);

  int total = numbers.fold(0, ((previousValue, element) {
    print('----------------');
    print('previousValue : $previousValue');
    print('element: $element');
    print('total : ${previousValue + element}');
    return previousValue +
        element; // previouseValue 이전에 리턴해준 값 + 반복하여 리턴해서 받아온 값
  }));
  print(total);

  // index = 0
  // element = 0 리스트의 값
  // previouseValue = 0
  // return = 0 + 0 = 0

  // index = 1
  // element = 1
  // previouseValue = 0
  // return = 0 + 1 = 1

  // index = 2
  // element = 2
  // previouseValue = 1
  // return = 1 + 2 = 3

  // index = 3
  // element = 3
  // previouseValue = 3
  // return = 3 + 3 = 6

  //! fold는 previouseValue 이전에 값을 연속적으로 누적을 시킬때 사요하면 좋은 클래스 인것 같습니다.

  //reduce
  //fold에서는 시작값인 0을 지정하는데, reduce에서는 생략된다

  int total2 = numbers.reduce(((value, element) => value + element));

  print(total2);
}
