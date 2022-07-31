import 'dart:async';

void main() {
  // calculate2(1).listen((val) {
  //   print('calculat(1): $val');
  // });

  // calculate2(4).listen((val) {
  //   print('calculat(4): $val');
  // });

  //! 꼭()붙여줘야지 리턴값을 받을수 있다.
  playAllStream().listen((val) {
    print(val);
  });
}

//yield*를 통해 await 기능을 사용할수 있게 된다. 기다리고 완료후 데이터를 보내준다.
Stream<int> playAllStream() async* {
  yield* calculate2(1);
  yield* calculate2(2000);
}

//스트림 타입 함수 async* 와 yield를 해줘야한다.
//! async* 을 통해 Futrue을 사용할수 있는방법은 await를 하면된다.
Stream<int> calculate2(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}

//이렇게 함수가 있으면 i 가 0일때만 돌릴수 있다. 해결하는방법은 스트림으로 해결할수 잇다.
calculate(int number) {
  for (int i = 0; i < 5; i++) {
    return i * number;
  }
}
