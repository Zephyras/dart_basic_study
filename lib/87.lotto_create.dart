import 'dart:collection';
import 'dart:math' as math;

void main(List<String> args) {
  var rand = math.Random();

  HashSet<int> lotteryNumber = HashSet();

  while (lotteryNumber.length < 6) {
    lotteryNumber.add(rand.nextInt(45) + 1);
  }

  print(lotteryNumber);
}
