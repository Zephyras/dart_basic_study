void main() {
  Idol blackPink = Idol();

  print(blackPink.name);
  print(blackPink.members);
}

//idol class
//name,
//members,
//sayHello,
//introduce
class Idol {
  String name = '블랙핑크';
  List<String> members = ['지수', '리사', '제니', '로제'];

  void SayHello() {
    print('안녕하세요 블랙핑크입니다');
  }

  void introduce() {
    print('저희 멤버는 지수, 제니, 리사, 로제가 있습니다');
  }
}
