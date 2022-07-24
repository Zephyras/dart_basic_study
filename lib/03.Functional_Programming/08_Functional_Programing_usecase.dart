void main(List<String> args) {
  //아래 키와 벨류 쌍으로 된 형태는 json 형태랑 동일하다.
  //이형태의 데이터들이 문자열이 틀리거나 무슨 데이터가 들어와 있는 알수가 없다.
  // 클래스 형태로 바꿔서 할수 있다. 필터하는거처럼 믿을수 있는 상태가 된다.
  final List<Map<String, String>> people = [
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': '로제',
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

  final parsedPeople = people
      .map(
        (e) => Person(
          name: e['name']!, // null 아니라 강제로 데이터 있다고 !로 값들이 존재하다고 증명을 해줘야한다.
          group: e['group']!,
        ),
      )
      .toList();

  print(parsedPeople);

  //응용할수 있는부분
  for (Person person in parsedPeople) {
    print(person.name);
    print(person.group);
  }
  //파싱된 문자열에서 bts만 뽑으려고 한다면 아래와 같다.
  final bts = parsedPeople.where((element) => element.group == 'BTS');
  print(bts);

  //Funtional Programing의 장점은 리턴을 해서 새로운 값을 가져오기떄문에 다양하게 사용할수 있다.
  final result = people
      .map(
        (e) => Person(
          name: e['name']!,
          group: e['group']!,
        ),
      )
      .where((element) => element.group == 'BTS');
  //? fold로 또한번 개수를 합치 수 추가 로직
  // .fold<int>(
  //     0,
  //     (prev, next) =>
  //         prev +
  //         next.name
  //             .length); // where을 바로 사용할수 잇다. 만약 더 수정한다하면 fold로 또 할수 있다 계쏙 변환이 가능하다.
  print('--------- Funtional Programing -------------');
  print(result);

  //! functional의 장점은
  //! 1. 실행하는 리스트나 세트나 맵과 다른 새로운 값을 생성을 해준다.
  //! 2. 체이닝을해서 매번 새로운값의 형태를 만들 수 있다.
  //! *중요 너무 많이 사용하면 독이된다. 필요한 기능만 작성후 주석을 달거나 짧게 사용해서 이요하는게 좋은 코딩이다.
}

//Json 형태를 클래스 형태로 바꿔줄 클래스 선언
class Person {
  final String name;
  final String group;

  Person({
    required this.name,
    required this.group,
  });

  //Instance of 'Person' 이라고 나오게 기본적으로 나타게 되어 잇다
  //이부분을 수정을 할수 있는게 클래스의 기본으로 가지고 있는 toString 오버라이드를 이용하는거다
  @override
  String toString() {
    return 'Person(name:$name, group:$group)';
  }
}
