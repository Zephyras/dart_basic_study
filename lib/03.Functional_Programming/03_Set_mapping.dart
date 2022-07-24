void main(List<String> args) {
  Set blackPinkSet = {
    '로제',
    '지수',
    '제니',
    '리사',
  };

  final newSet = blackPinkSet.map((e) => '블랙핑크 $e').toSet();

  print(newSet);
}
//Set으로 된 값을 리스트 맵핑으로 해서 변환할 수 있다.