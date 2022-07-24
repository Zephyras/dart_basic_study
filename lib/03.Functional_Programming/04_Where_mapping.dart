import 'dart:math';

void main(List<String> args) {
  List<Map<String, String>> people = [
    {
      'name': '로제',
      'group': '블랙핑크',
    },
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': 'RM',
      'group': 'BTS',
    },
    {
      'name': '뷔',
      'group': 'BTS',
    },
  ];

  print(people);
  //where 사용방법 함수를 사용하면 true false로 서치를 한후 false일 경우 삭제를 한다. 즉, 검색을 할수 있다.
  final blackpPink = people.where((element) => element['group'] == '블랙핑크');
  print(blackpPink);
}
