void main(List<String> args) {
  //!reduce는 타입이 무조건 같아야하지만 fold는 같지 않아도 된다.
  //타입값을 정해줘야 하므로 제네릭으로 <int> 해줘야한다.
  List<int> numbers = [1, 3, 5, 7, 9];

  final sum = numbers.fold<int>(0, (prev, next) {
    print('-----------------');
    print('prev : $prev');
    print('next : $next');
    print('total : ${prev + next}}');
    return prev + next;
  });

  print(sum);

  //! fold의 장점
  //! 아무 타입을 받아서 리턴해줄수 있다.

  List<String> words = [
    '안녕하세요',
    '저는',
    '코드팩토리입니다',
  ];

  final sentence = words.fold<String>('', (prev, next) => prev + next);

  print(sentence);

  final count = words.fold<int>(0, (prev, next) => prev + next.length);
  print(count); //fold함수를 써도 타입형 <int>로 선언한 다음 문자의 길이를 int형으로 바꿔서 개수를 셀수 있다.
}
