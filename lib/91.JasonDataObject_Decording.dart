import 'dart:convert';

void main() {
  //jason 형식으로 선언된 문자열
  var jsonString = '''[
    {"score": 90},
    {"score": 20}
  ]''';
  //json 형식을 parsing 해주는 jsonDecode
  var scores = jsonDecode(jsonString);
  print(scores is List);
  var firstScore = scores[0];
  print(firstScore is Map);
  print(firstScore['score'] == 40);
}
