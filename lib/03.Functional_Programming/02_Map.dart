void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니'];

  //! 함수 안에 함수를 넣으며 매개변수를 넣어준다.
  final newBlackPink = blackPink.map((e) {
    return '블랙핑크 $e';
  });

  print(blackPink);
  print(blackPink.asMap());

  print(newBlackPink.toList());

  //! final newBlackPink = blackPink.map((e) {
  //!   return '블랙핑크 $e';
  //! });
  //! => 에로우함수를 통해 간편하게 아래와 같이 표현할 수 있다.
  //!
  final newBlackPink2 = blackPink.map((e) => '블랙핑크 $e');

  print(newBlackPink2.toList());

  print(blackPink == blackPink);
  print(newBlackPink == blackPink);
  print(blackPink == newBlackPink2); //map을 쓰면 새로운 리스트를 계속 만들기 때문에 다 다르다.

  //예시 [1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]
  String number = '123123';

  final parsed = number
      .split('')
      .map((e) => '$e.jpg')
      .toList(); //split 하나의 스트링 문자여을 각자 문자로 나눠준다.

  print(parsed);

  //? Map_2

  Map<String, String> harryPotter = {
    'Harry Potter': '해리 포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온트 그레인저',
  };

  //MapEntry 맵핑을 MapEntry
  //MapEntryM<K, V> Class
  //Map 의 항목을 나타내는 키/값 쌍 입니다.
  //Map 인터페이스에는 항목 개체를 기반으로 지도를 검사하거나 수정할수 잇는 메소드가 포함되어 잇다.
  final result = harryPotter.map((key, value) => MapEntry(
        'Harry Potter Character $key',
        '해리포터 캐릭터 $value',
      ));

  print(harryPotter);
  print(result);

  final keys = harryPotter.keys.map((e) => 'HPC $e').toList();
  final values = harryPotter.values
      .map(
        (e) => '해리포터 $e',
      )
      .toList();

  print(keys);
  print(values);
}
