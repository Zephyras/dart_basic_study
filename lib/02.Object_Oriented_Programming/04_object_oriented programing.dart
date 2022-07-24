void main(List<String> args) {
  Test test = Test();
  test.testPrint();
}

//? Object Oriented Programing
//? 객체지향 프로그래밍
// class text extended Object //!Object를 상속받는건 class text 기본적으로 오브젝트를 상속하기 떄문에 생략되어 있어서 동일하다. 즉 최상위 클래스는 모두 Object를 속해있다.
class Test {
  void testPrint() {
    print("testPrint oob programing");
  }
}
