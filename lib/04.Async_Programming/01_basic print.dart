void main(List<String> args) {
  addNumber(1, 1);
  addNumber(2, 2);
}

// 1+ 1 = 2;
// 2 + 2 = 4

void addNumber(int number1, int number2) {
  print('계산중: $number1 + $number2');
  print('계산완료:${number1 + number2}');
}
