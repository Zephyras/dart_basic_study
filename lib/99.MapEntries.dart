void main(List<String> args) {
  Map map = {
    'Apple': '사과',
    'Banana': '바나나',
    'Kiwi': '키위',
  };
  //Map의 entries는 key값과 value값을 세트로 매핑하여 꺼낼수 있는 기능을 말한다.
  final newMap = map.entries.map(
    (entry) {
      final key = entry.key; //각 인덱스마다 값을 추출할수 잇다
      final value = entry.value; //각 인덱스마다 값을 추출할수 잇다

      return '$key는 한글로 $value 입니다.';
    },
  );

  print(newMap);
  print(newMap.toString());
}
