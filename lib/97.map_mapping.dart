void main(List<String> args) {
  List<String> world = [
    '한국',
    '중국',
    '일본',
    '러시아',
    '미국',
  ];

  final newWorld = world.map((e) {
    return '이 국가명은 ${e} 입니다';
  });

  //**************************************** */
  final newWorld2 = world.map(
    (e) => '이 국가명은 ${e} 입니다....',
  );

  print(world);
  print(newWorld);
  print(newWorld.toList());
  print(newWorld2);
}

//map의 경우 기능수행영역(body{}) 안에 리턴값을 받을수 있다.
// return을 할때마다 누적을 모두 한후 , newWorld에 신규 할당이 되기 때문에.
// 값이 변경된것 처럼 보이지만 클래스의 원래 값은 변하지 않았다.

