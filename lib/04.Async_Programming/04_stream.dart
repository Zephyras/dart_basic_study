//Future는 한 함수에서 하나의 값만 받을수 있다.
//Stream은 완료하기오전까지 반환값을 받아서 모아놓고 완료하기 명령이 되면 보낸다. 사용하기 복잡하고 어렵다

import 'dart:async';

void main() {
  final controller = StreamController();

  //final stream = controller.stream;

  final streambroadcast = controller.stream.asBroadcastStream();

  // final streamListener1 = stream.listen((val) {
  //   print('Listener 1: $val');
  // });
  final streamListener2 =
      streambroadcast.where((val) => val % 2 == 0).listen((val) {
    print('Listener 2: $val');
  });
  final streamListener3 =
      streambroadcast.where((val) => val % 2 == 1).listen((val) {
    print('Listener 3: $val');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);

  //! steam 2개는 사용은 에러난다.
}
