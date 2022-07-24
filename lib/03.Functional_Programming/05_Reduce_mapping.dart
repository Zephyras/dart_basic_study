void main(List<String> args) {
  List<int> numbers = [1, 3, 5, 7, 9];

  final result = numbers.reduce((prev, next) {
    print('----------------');
    print('previous : $prev');
    print('next: $next');
    print('total : ${prev + next}');
    return prev + next;
  });

  print(result);

  List<String> words = [
    '안녕하세요',
    '저는',
    '코드팩토리입니다.',
  ];

  final sentence = words.reduce((prev, next) => prev + next);

  print(sentence);
  //! reduce는 제일중요한게 reduce를 실행하는 리스트의 타입에 무조건 맞춰줘야한다.
  //words.reduce((prev, next) => prev.length + next.length);
}
