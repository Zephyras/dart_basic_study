//? Interface 인터페이스

//import 'dart:html';

void main() {
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('레드벨벳');
  // IdolInterface test = IdolInterface(
  //     '블랙핑크'); //! 인터페이스는 사용하려고 만든게 아니라 문제가 생긴다 인터페이스를 막을수 있는 방법 있는데 abstract를 사용해 방지 할수 있다.
  bts.sayName();
  redVelvet.sayName();

  print(bts is IdolInterface);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  print(redVelvet is IdolInterface);
  print(redVelvet is BoyGroup);
  print(redVelvet is GirlGroup);
}

abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  //void sayName() {} //! abstract를 사용해서 추상적이떄문에 인터페이스역할을 전용으로 안하기 때문에 바디를 지워도 된다.
  void sayName();
}

class BoyGroup implements IdolInterface {
  String name;

  BoyGroup(this.name);

  void sayName() {
    print('제 이름은 $name입니다.');
  }
}

class GirlGroup implements IdolInterface {
  String name;

  GirlGroup(this.name);

  void sayName() {
    print('제 이름은 $name입니다.');
  }
}
