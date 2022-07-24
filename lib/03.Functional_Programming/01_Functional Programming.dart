void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니', '제니'];
  //? Funtional Programming 함수프로그래밍
  //? 함수프로그래밍의 기본은 형변환이다.

  //! 형변환에 대하여
  print(blackPink);
  print(blackPink.asMap()); //! 맵변환 키에는 인덱스 값에는 리스트가 포함
  print(blackPink.toSet()); //! 셋변환 자동으로 중복 문자열을 제거해준다.

  Map blackPinkMap = blackPink.asMap(); //! 맵타입형 변수에 데이터 대입.

  print(blackPinkMap
      .keys); //! (0, 1, 2, 3, 4) ()형태는 Iterable<dynamic> 타입이며 일종의 리스트 타입이다.
  print(blackPinkMap.values); //! (로제, 지수, 리사, 제니, 제니)

  print(blackPinkMap.keys.toList()); //! 리스트 형태로 받으려면 .toList()으로 받으면 된다.
  print(blackPinkMap.values.toList());

  Set blackPinkSet = blackPink.toSet(); //! 셋타입으로 변수에 데이터 대입
  Set blackPinkSet2 = Set.from(blackPink); //! 리스트타입을 셋타입으로 변환후 대입
  print(blackPinkSet.toList());
  print(blackPinkSet2.toList());
}
