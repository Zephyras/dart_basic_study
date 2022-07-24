void main(List<String> args) {
  List<int> even = [
    2,
    4,
    6,
    8,
  ];

  List<int> odd = [
    1,
    3,
    5,
    7,
    9,
  ];

  //cascading operator
  // ...
  print([even, odd]);
  print([...even, ...odd]); //리스트안에 리스트가 존재할경우 ...을 이요하면 하나의 리스트 형태로 펼쳐진다.
  print(even); //리스트형태
  print([...even]); //리스트를 풀어놓은 형태
  print(even == [...even]); // false 이므로 새로운 리스트에 할당해서 출력되는걸 알수 있다.
}
