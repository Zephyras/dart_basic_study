import 'package:dart_basic_01/95.checkVersion.dart';

void main(List<String> args) async {
  await getVersionName().then((value) => print(value));
  print('end process');
}

Future<String> getVersionName() async {
  var versionName = await lookUpVersionName();
  return versionName;
}

String lookUpVersionName() {
  return 'Android Q';
}
