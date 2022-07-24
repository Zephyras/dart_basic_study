void main() {
  Lecture<String, String> lecture1 = Lecture('123', 'lecture');
  lecture1.printIdType();

  Lecture<int, String> lecture2 = Lecture(123, "lecture2");
  lecture2.printIdType();
}

//generic - 타입을 외부에서 받을때 사용
class Lecture<T, X> {
  final T id; //! T타입을 받는 변수명은 어떤 타입이든 Lecture가 받을서 선언 할수있다.
  final String name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}
