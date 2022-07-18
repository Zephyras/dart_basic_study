void main() {
//   //? Obejct Oriented Programing (OOP 프로그래밍)
//   // String name2 = "블랙핑크2";
//   // const String name3 =
//   //     "블랙핑크3"; //!const 여야지 const형태 클래스 안에 접근할수 있다. 같은 메모리 공간이기 때문이다.
//   // Idol blackPink =
//   //     Idol('블랙핑크', ['지수', '제니', '리사', '로제']); //! const키워드가 없을경우 인스턴스가 서로 다르다.
//   // Idol blackPink1 = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);

//   // Idol blackPink2 = const Idol('블랙핑크', ['지수', '제니', '리사', '로제']); //! const
//   // Idol blackPink3 = const Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
//   // Idol blackPink4 = const Idol(name3, ['지수', '제니', '리사', '로제']);

//   // //blackPink.name = '코드팩토리'; //! final일 경우 값이 변경되므로 에러가 된다.
//   // print(blackPink.name);
//   // print(blackPink.members);
//   // print(blackPink2.name);
//   // print(blackPink2.members);
//   //blackPink.SayHello();
//   //blackPink.introduce();

//   // //Idol bts = Idol('BTS', ['RM', '진', '슈가', '제이홈', '지민', '뷔', '정국']);
//   // print('---------------------------------------');
//   // print(blackPink == blackPink1);
//   // print(blackPink2 == blackPink3);
//   // Idol bts = Idol.fromList([
//   //   'BTS',
//   //   ['RM', '진', '슈가', '제이홈', '지민', '뷔', '정국'],
//   // ]);
//   // print(bts.name);
//   // print(bts.members);

//   //? getter setter 시작 내용
//   //!getter
//   Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
//   Idol bts = Idol('BTS', ['RM', '진', '슈가', '제이홈', '지민', '뷔', '정국']);

//   print(blackPink.firstMember);
//   print(bts.firstMember);

//   //!setter
//   blackPink.firstMember = '코드팩토리';
//   bts.firstMember = '아이언맨';

//   print(blackPink.firstMember);
//   print(bts.firstMember);

////! 상속~~~~~~~~~~~~
  print('------------ Idol ----------------');
  Idol apink = Idol(name: '에이핑크', membersCount: 5);
  apink.sayName();
  apink.sayMembersCount();

  print('------------ BTS ----------------');
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();
}

// //? 클래스, 변수, 함수 분류
// //* Idol class
// //* name(이름) - 변수
// //* members(멤버들) - 변수
// //* sayHello(인사) - 함수
// //* introduce(멤버소개) 함수

// //? 생성자에 대하여
// //* constructor(생성자)
// //* Named constructor
// //* immutable 프로그래밍 한번 입력하면 변경이 안되게 하는 코드

// //! _클래스명 , _변수명, _함수명을 하면 private 형태로 사용할 수 있다.
// class Idol {
//   // String name = '블랙핑크';
//   // List<String> members = ['지수', '리사', '제니', '로제'];

//   //! final 키워드를 사용하여 한번사용하면 값을 사용할수 없게 해준다. (immutable 프로그래밍)
//   //! 선언이 되는 경우는 main()에서 인스턴스 클래스를 생성될때 적용 된다.
//   // final String name;
//   // final List<String> members;

//   // Idol(String name, List<String> members)
//   //     : this.name = name,
//   //       this.members = members;

//   // const Idol(this.name,
//   //     this.members); // 기본 생성자 //!생성자에 const 할경우 main()에서 인스터스 할때 const를 해야한다. 적용되면 값을 바꿀수 없다. 빌드타입.

//   //? getter / setter 를 사용하려면 final const 사용할수 없으니 지우고 시작!

//   String name;
//   List<String> members;

//   Idol(this.name, this.members); // 기본 생성자

//   Idol.fromList(List values) // 네임드 생성자
//       : this.name = values[0],
//         this.members = values[1];

//   //! ${}를 이용해서 문자열을 넣어서 간편하게 사용할 수 있다.
//   // void SayHello() {
//   //   print('안녕하세요 블랙핑크입니다');
//   // }

//   void SayHello() {
//     print('안녕하세요 ${this.name}입니다');
//   }

//   // void introduce() {
//   //   print('저희 멤버는 지수, 제니, 리사, 로제가 있습니다');
//   // }

//   void introduce() {
//     print('저희 멤버는 ${this.members}가 있습니다');
//   }
//   //!  ${}를 이용해서 문자열을 넣어서 간편하게 사용할 수 있다.

//   //! getter setter
//   //! 데이터를 가져올때
//   //! String 반환 타입
//   //! get 키워드 값을 가져온다 함수명 뒤 {} 사용한다.
//   //! 함수 안에 this.members[0] 자산의 members의 인덱스 0번째를 값을 반환해서 가져와라.
//   String get firstMember {
//     return this.members[0];
//   }

//   //!set 키워드 선언하고 똑같은 이름의 함수처럼 선언한다. 특이점은 매개변수가 무조건 하나만 존재한다.
//   set firstMember(String name) {
//     this.members[0] = name;
//   }

//   //!getter setter 와 일반함수의 차이점은 없다. 다만, 로직이 많고 복잡할때는 함수로 간소하게 데이터만 가져와서 사용할때는 getter setter를 사용하는게 일반적이다.
//   //!하지만 setter는 현대에 잘 사용하지않는다. 보통 보안성을 위해서 상수로 변하지않게 프로그래밍을 하는데 setter를 사용하면 원하는 방식에서 어긋난다.
//  //}

//! 상속 - inheritance
//
// 상속으 바으면 부모 클랫의 모든 속성을 자식 클래스가 부여 받는다.
class Idol {
  //이름
  String name;
  //멤버 숫자
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print('저는 ${this.name} 입내다.');
  }

  void sayMembersCount() {
    print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
}

class BoyGroup extends Idol {
  //BodyGroup({required super.name, required super.membersCount});

  BoyGroup(
    String name,
    int membersCount,
  ) : super(name: name, membersCount: membersCount);

  void sayMale() {
    print('저는 남자 아이돌이빈다.');
  }
}
