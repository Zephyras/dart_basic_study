import 'dart:convert';

//
void main() {
  //jason 형식으로 선언된 문자열
  var scores = [
    {'score': 90},
    {'score': 20},
    {"score": 100, 'overtime': true, 'special_guest': null}
  ];
  //책에서는 비교를 했을경우 true 라고 나와야하는데 안나옴
  // 디버깅해도 동일한 내용이다.. 먼가 쓰레기값이나 내용이 안맞는것 같은데.. 이유를 모르겠다.
  var jsonText = jsonEncode(scores);
  print(scores.toString());
  print(jsonText ==
      '[{"score": 90},{"score": 20},'
          '{"score": 100,"overtime": true,'
          '"special_guest": null}]');
}
