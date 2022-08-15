//애플리케이션을 개발하다 보면 데이터를 순서대로 주고받아야 할때가 있다. 데이터를 순서대로 무전기처럼
//주고받는 것으로 생각하며 나오게 화면을 구성했는데 네트워크나 와이파이 연결이 끊기거나 특정 api 호출이 늦어져 순서가 달리지면 애플리케이션이 원하는 흐름대로 작동하지 않을 수 있다.
//이처럼 순서를 보장받고 싶을때 스트림을 이용하면 좋다.
//스트림은 처음에 넣은 데이터가 꺼낼때도 가장 먼저 나오는 큐(queue) FIFO(First In first Out) 데이터 구조로 되어 있다.

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;

  await for (var value in stream) {
    print('sumStream : $value');
    sum += value;
  }

  return sum;
}

//async* yield를 사용해서 Stream to에서 받은 개수만큼 축적 시켰다가 한번에 보내줄수 있게 해준다.
Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    print('countStream : $i');
    yield i;
  }
}

main() async {
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum);
}
