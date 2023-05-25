import 'dart:convert';

void main(){
  print("==================解码和编码 JSON=============================");
  // 一定要使用双引号，不能是单引号
  var jsonString = '''
    [
      {"score": 40},
      {"score": 80}
    ]
  ''';

  var scores = jsonDecode(jsonString);
  print(scores is List);

  var firstScore = scores[0];
  print(firstScore is Map);
  print(firstScore['score']);

  var scores1 = [
  {'score': 40},
  {'score': 80},
  {'score': 100, 'overtime': true, 'special_guest': null}
  ];

  var jsonText = jsonEncode(scores1);
  print(jsonText);
 
  print("==================解码和编码 UTF-8 字符=============================");
  List<int> utf8Bytes = [
  0xc3, 0x8e, 0xc3, 0xb1, 0xc5, 0xa3, 0xc3, 0xa9,
  0x72, 0xc3, 0xb1, 0xc3, 0xa5, 0xc5, 0xa3, 0xc3,
  0xae, 0xc3, 0xb6, 0xc3, 0xb1, 0xc3, 0xa5, 0xc4,
  0xbc, 0xc3, 0xae, 0xc5, 0xbe, 0xc3, 0xa5, 0xc5,
  0xa3, 0xc3, 0xae, 0xe1, 0xbb, 0x9d, 0xc3, 0xb1
  ];

  var funnyWord = utf8.decode(utf8Bytes);

  print(funnyWord );
}