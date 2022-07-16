void main() {
  //? 1. 변수란? 코드의 흐름?
  //! 코드는 무조건 위에서 부터 아래서 순차적으로 실행된다.

  //* print('Hello Code Factory');

  //! 변수 var Variable이라고 부른다.
  // var className = "14기 플러터 스타디";
  // print(className);

  // var studentName = "황교욱";
  // print(studentName);

  // var programLanguage = "플러터 프로그래밍";
  // print(programLanguage);

  //! 같은 스코프안에서 동일한 변수이름은 존재할 수 없다.
  //var studentName = "황교욱";

  //? 2. 변수타입에 대하여
  //! 정수 (integer)
  //! 변수에 값을 대입할때 10 과 '10' "10"은 형태는 다르다.
  // int number1 = 10;
  // print(number1);

  // int number2 = 15;
  // print(number2);

  // int number3 = -20;
  // print(number3);

  //? 변수의 값의 연산자
  // int number1 = 2;
  // int number2 = 4;
  // print(number1 + number2);
  // print(number1 - number2);
  // print(number1 / number2);
  // print(number1 * number2);

  //? 실수 (double)
  // double number1 = 2.5;
  // double number2 = 0.5;
  // print(number1 + number2);
  // print(number1 - number2);
  // print(number1 / number2);
  // print(number1 * number2);

  //? 참/거짓 맞다/틀리다 (boolean)
  // bool isTrue = true;
  // bool isFalse = false;

  // print(isTrue);
  // print(isFalse);

  //? 글자 타입 String
  // String name = '문자열';
  // String name2 = '다트언어 공부';

  // //* var String 타입을 자동으로 변환해준다. 확인하는방법은 변수.runType 을 하면 된다
  // //*var
  // //*https://skylove1982.tistory.com/entry/%EB%8B%A4%ED%8A%B8dart-%EA%B8%B0%EB%B3%B8-%EB%B3%80%EC%88%98%EA%B0%92-%EC%B6%9C%EB%A0%A5-%EC%82%AC%EC%9A%A9%EB%B2%95
  // var name3 = '문자열 타입';
  // var number = 30;

  // //*testType 앞에 변수 선언문이 길고 귀찮을때 축약해서 var 로 하면 편해서 사용하는 사람도 있음.
  // Map<String, Map<int, List<double>>> testType = {};
  // var testType2 = {};

  // String name4 = '레드벨벳';
  // String name5 = '슬기';
  //* 두개이상의 String변수를 연결해서 표현하려면 + 를 사용한다.
  // print(name + name2);
  // print(name + '  ' + name2);

  // //* 각자 ${}를 넣어줘도 똑같이 나온다.
  // print('${name4} ${name5}');
  //* 변수명. 점(피리오드)를 눌러서 기능을 사용할때는 +로는 불가능하므로 전체를 {}로 감싸서 사용해야한다.
  // print("name3: ${name3.runtimeType}");
  // print("number: ${number.runtimeType}");

  //? 다이나믹 타입
  // dynamic dynamicType_name = '코드팩토리';
  // print(dynamicType_name);

  // dynamic dynamicType_number = 1;

  // print(dynamicType_number);

  // var variableType_name = '블랙핑크';

  // print(variableType_name);

  // print(dynamicType_name.runtimeType);
  // print(variableType_name.runtimeType);

  // dynamicType_name = 2;
  // variableType_name = 5; //! 다이나믹은 알아서 타입에 맞게 변경하지만 변수는 변수타입이 동일하게 해줘야한다.

  // //? nullable에 대하여
  // //! nullable - null이 될 수 있다 O.
  // //! non-nullable - null이 될 수 없다 X.
  // //! null - 아무 값을 가지고 있지 않다.
  // String name = "코드팩토리";
  // print(name);

  // //널까지 들어갈수있다 허용할수 있다를 의미함
  // String? name2 = "블랙핑크";

  // name2 = null;
  // //! 변수명뒤에!표를 넣으면 name2는 절대 널이 아니다를 의미한다.
  // print(name2!);

  //? final & const
  // final String name = '코드팩토리'; //값을 변경할수 없다. //앱이 돌아갈때 클래스 나올때 변경 데이터값이 변경이 됩니다.
  // print(name);
  // const String name2 = '블랙핑크'; //값을 변경할 수 없다.
  // print(name2);

  //DateTime 시간을 관리하는 클래스
  //현재 시각을 저장한다.
  // final DateTime now = DateTime.now();
  // print(now);

  //const 같은경우 빌드타임을 알고 있어야지 가능하다.
  //코드를 작성을 하면 0101 2진수로 변환 만들어져 있다.

  //const DateTime now2 = DateTime.now();

  //? 오퍼레이터 operator
  // int number = 2;
  // print(number);
  // print(number + 2);
  // print(number - 2);
  // print(number * 2);
  // print(number / 2);

  // print('=============================');
  // print(number % 2);
  // print(number % 3);

  // print(number);
  // print('=============================');

  // //*증감 연산자 전위 후위 분류되어 있음.
  // //*https://codingadinga.tistory.com/11
  // number++;

  // print(number);

  // number--;

  // print(number);

  //? 더하기할당연산자
  // double number = 4.0;
  // print(number);
  // number += 1;
  // print(number);

  // number -= 1;
  // print(number);

  // number *= 2;

  // print(number);

  // number /= 2;

  // print(number);

  //? null 오퍼레이터
  // double? number = 4.0;
  // print(number);

  // number = 2.0;

  // print(number);

  // number = null;
  // print(number);

  //! //?? 오퍼레이터 연산자는 null일 경우에 3.0을 보여줘
  // number ??= 3.0; //null 아니고 경고가 뜨며 출력이 되지 않는다.
  // print(number);

  //? 비교 연산자
  // int number1 = 1;
  // int number2 = 2;

  // print(number1 > number2); //참과 거짓중 틀렸기 떄문에 거짓이므로 false 를 출력
  // print(number1 < number2); //참과 거짓중 틀렸기 떄문에 참이므로 true 를 출력
  // print(number1 >= number2); //참과 거짓중 틀렸기 떄문에 거짓이므로 false 를 출력
  // print(number1 <= number2); //참과 거짓중 틀렸기 떄문에  참이므로 true 를 출력
  // print(number1 == number2); //참과 거짓중 틀렸기 떄문에 거짓이므로 false 를 출력
  // print(number1 != number2); //참과 거짓중 틀렸기 떄문에 참이므로 true 를 출력

  //? 타입을 비교 오퍼레이터
  int number1 = 1;

  // print(number1 is int); //타입을 비교할때는 is를 넣어주면된다. 참 true
  // print(number1 is String); //타입을 비교할때는 is를 넣어주면된다. 거짓 false

  // print(number1 is! int);
  // print(number1 is! String);

  //? 논리 연산자 오퍼레이터
  // bool result = 12 > 10 && 1 > 0 && 3 > 0;
  // print(result);
  // bool result2 = 12 > 10 && 0 > 1;
  // print(result2);

  // // || OR 연산자
  // bool result3 = 12 > 10 || 1 > 0;
  // print(result3);

  // bool result4 = 12 > 10 || 0 > 1;
  // print(result4);

  // bool result5 = 12 < 10 || 0 > 1;
  // print(result5);

  //? 리스트 List 여러의 값을 하나의 값으로 만들수 있다
  //<> 제네릭 타입형 이라고 불린다

  // List<String> blackPink = ['제니', '지수', '로제', '리사'];
  // List<int> numbers = [1, 2, 3, 4, 5, 6];

  // print(blackPink);
  // print(numbers);

  // // index 인덱스는 0부터 시작한다
  // print(blackPink[0]); //! 제니
  // print(blackPink[1]); //! 지수
  // print(blackPink[2]); //! 로제
  // print(blackPink[3]); //! 리사
  // //print(blackPink[4]); //! 존재하지 않아서 없으므로 에러가 발생
  // print(blackPink.length);
  // blackPink.add('다음멤버');
  // print(blackPink);

  // blackPink.remove('다음멤버');
  // print(blackPink);

  // print(blackPink.indexOf('제니'));

  //? Map Key와 Value로 이루어진 쌍
  // Map<String, String> dictionary = {
  //   'Harry Potter': '해리포터',
  //   'Ron Weasley': '론 위즐리',
  //   'Hermione Granger': '헤르미온느 그레인저',
  // };

  // print(dictionary);

  // Map<String, bool> isHarryPotter = {
  //   'Harry Potter': true,
  //   'Ron Weasley': true,
  //   'Ironman': false,
  // };

  // print(isHarryPotter);

  // //리스트를 추가 해줄때 {} 안에 입력해야한다.
  // isHarryPotter.addAll({
  //   'Spiderman': false,
  // });

  // print(isHarryPotter);

  // // 키의 값이 일치할 경우 그에 맞는 벨류 값을 가져온다.
  // print(isHarryPotter['Ironman']);

  // //아래처럼 변수에 키를 설정하고 벨류를 대입해주면 추가된다.
  // isHarryPotter['Hulk'] = false;
  // print(isHarryPotter);

  // //변경할수도 있음 false => true 로 변경.
  // isHarryPotter['Spiderman'] = true;
  // print(isHarryPotter);

  // isHarryPotter.remove('Harry Potter');
  // print(isHarryPotter);

  // //isHarryPotter 안에 있는 모든 keys 호출
  // print(isHarryPotter.keys);
  // //isHarryPotter 안에 있는 모든 values 호출
  // print(isHarryPotter.values);

  //? Set
  //? Set은 Map랑 매우 비스하지만 List형태로 되어 있다. 특징으로는 중복값이 불가능하다.

  // final Set<String> names = {
  //   'Code Fatory',
  //   'Flutter',
  //   'Black Pink',
  // };

  // print(names);

  // names.add('Janny');

  // print(names);

  // names.remove('Flutter');
  // print(names);
  // print(names.contains('Janny'));
  // print(names.contains('Flutter'));

  //? 조건문 if문

  // int number = 2;

  // if (number % 2 == 0) {
  //   print("값이 짝수 입니다");
  // } else {
  //   print("값이 홀수 입니다");
  // }

  // int number2 = 5;
  // if (number2 % 3 == 0) {
  //   print("나머지 값이 0 입니다");
  // } else if (number2 % 3 == 1) {
  //   print("나머지 값이 1 입니다");
  // } else {
  //   print("나머지 값이 2 입니다");
  // }

  //? switch 스위치문
  // int number3 = 1;

  // switch (number3 % 3) {
  //   case 0:
  //     print('나머지 값이 0 입니다.');
  //     break;

  //   case 1:
  //     print('나머지 값이 1 입니다.');
  //     break;

  //   case 2:
  //     print('나머지 값이 2 입니다.');
  //     break;

  //   default:
  //     print('나머지 값이 3 입니다.');
  //     break;
  // };

  //? 반복무누 Loop 문
  // for (int i = 0; i < 10; i++) {
  //   print(i);
  // }

  // print("--------------------");
  int total = 0;

  // List<int> numbers = [1, 2, 3, 4, 5, 6];
  // print(numbers.length);
  // for (int i = 0; i < numbers.length; i++) {
  //   total += numbers[i];
  //   print(i);
  // }

  // print(total);

  //또다른 문법
  //in의 오른쪽값이 리스트형태 값이 여야하며 루프를 돌면서 하나씩 불러온다.
  // for (int number in numbers) {
  //   //print(number);
  //   total += number;
  // }

  // print(total);

  //? 반복문 while loop
  // int total = 0;

  //! 조건을 제대로 해줘야지 한다.. 그렇지 않으면 컴퓨터가 다운이 된다.
  // while (total < 10) {
  //   total += 1;
  // }

  // print(total);

  // total = 0; // 다시 0으로 초기화

  // do while은 먼저 total += 1을 하고 난다음 조건을 확인을 한다. do while 잘 안쓰고 보기도 불편해서
  // 이런게 있다고만 생각하라.
  // do {
  //   total += 1;
  // } while (total < 12);
  // print(total);

  // total = 0;
  // while (total < 10) {
  //   total += 1;

  //   if (total == 5) {
  //     break; // 5일경우 break니 구간을 빠져 나가라.
  //   }
  // }
  // print(total);

  // total = 0;
  // //! for문형태 일경우
  // for (int i = 0; i < 10; i++) {
  //   total += 1;
  //   if (total == 5) {
  //     break;
  //   }
  // }
  // print(total);

  // //! 컨티뉴
  // for (int i = 0; i < 10; i++) {
  //   if (i == 5) {
  //     continue; // 5일경우 이구문을 종료하고 즉 스킵을 하고 다시 6번부터 시작하라는 키워드.
  //   }
  //   print(i);
  // }

  //? enum문 사용 enum문을 사용하면 가독성이 매우 좋아진다. 사용하는데 강제를 할수 있다.
  // Status status = Status.pending;
  // if (status == Status.approved) {
  //   print('승인입니다.');
  // } else if (status == Status.pending) {
  //   print("대기입니다.");
  // } else {
  //   print("거절입니다.");
  // }

  //? Funtion 함수 //반복적으로 사용하는 부분을 한번만 작성해놓고 재활용하기 위해 사용 함수의 기능
  // int result1 = addNumbers(10, x1: 20);
  // int result2 = addNumbers(20, x1: 30, y: 12, z: 40);

  // //addNumbers(x: 10, y: 20, z: 30); // named parameter 로 순서가 틀려도 상관없다.

  // print(result1);
  // print(result2);

  // Operation operation = add;
  // int result = operation(10, 20, 30);
  // print(result);

  // operation = subtract;

  // int result2 = operation(10, 20, 30);
  // print(result2);

  // int result3 = calculate(30, 40, 50, add);
  // print(result3);

  // int result4 = calculate(30, 40, 50, subtract);
  // print(result4);
}

// 세계의 숫자 (x, y, z)를 더하고 짝수인지 홀수 인지 알려주는 함수
// parameter / argument : 매개변수 라고 부른다.
// positional parameter : 순서가 중요한 파라미터
// optional parameter : 있어도되고 없어도 되는 파라미터 [] 사용해서 할수 있다.
// Named parameter : 이름이 있는 파라미터 (순서가 중요하지 않다.){required intx, required int y, required int z}
// required를 사용하지않으면 Named parameter 형태지만 optional parameter 기능을 사용할 수 있다.
// void (공허를 의미한다) 타입이 정해져 있으면 return 반환을 해줘야 하지만 void일경우 반환을 해주므로 상관없다.
// arrow function : 화살표 함수
// typedef :

//int addNumbers(int x, {required int x1, int y = 20, int z = 30}) {
// print('addNumbers 실행');

// int sum = x + y + z;

// int x = 10;
// int y = 20;
// int z = 30;

// print('x : $x');
// print('y : $y');
// print('z : $z');

// if (sum % 2 == 0) {
//   print('짝수입니다.');
// } else {
//   print('홀수 입니다.');
// }
//return sum;
//}
// int addNumbers(
//   int x, {
//   required int y,
//   int z = 30,
// }) =>
//     x + y + z;

// typedef Operation = int Function(
//     int x, int y, int z); // 뒤에 함수 호출부분을 시그니쳐라고 불리운다.
// //더하기
// int add(int x, int y, int z) => x + y + z;

// //빼기
// int subtract(int x, int y, int z) => x - y - z;
// int calculate(int x, int y, int z, Operation operation) {
//   return operation(x, y, z);
// }

//? enum문
enum Status {
  approved, // 승인
  pending, // 대기
  rejected, // 거절
}
