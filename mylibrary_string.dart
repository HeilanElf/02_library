void main(){
  
  //检查字符串是否包含某些字符
  print('Never odd or even'.contains('odd'));

  // 判断一个字符是否以另一个字符开头
  print('Never odd or even'.startsWith('Never'));

  // 判断一个字符是否以另一个字符结尾
  print('Never odd or even'.endsWith('even'));

  //查找字符串中字符的位置
  print('Never odd or even'.indexOf('odd') == 6);

  // 获取字串字符
  print('Never odd or even'.substring(6, 9) == 'odd');

  // 分割字符串
  var parts = 'progressive web apps'.split(' ');
  print(parts.length == 3);
  print(parts[0] == 'progressive');

  // 通过索引获取UTF-16代码单元作为字符串
  print('Never odd or even'[0] == 'N');

  // 使用split()和一个空字符串来获取所有字符列表
  // 中间有迭代
  print("===========字符串列表获取=======================");
  print("原列表：\"hello\"");
  for (final char in 'hello'.split('')) {
      print(char);
    }
  print("===============================================");
  

  // 获取字符串中所有UTF-8单元
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  print(codeUnitList[0] == 78);

  // 转化为大写
  print('web apps'.toUpperCase() == 'WEB APPS');
  // 转化为小写
  print('WEB APPS'.toLowerCase() == 'web apps');

  // 修剪字符串（去除前后的空格）
  print('  hello  '.trim() == 'hello');

  //检查字符串是否为空
  print(''.isEmpty);

  //有空格的字符串不是空的 
  print('  '.isNotEmpty);
  
  //替换字符串 
  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
  
  print("============字符串替换==========================");
  print("替换前:$greetingTemplate");
  print("替换后:$greeting");
 
  // greetingTemplate没有改变 print("===============================================");
  print(greeting != greetingTemplate);

  // 构建字符串
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');

  var fullString = sb.toString();

  print(fullString == 'Use a StringBuffer for efficient string creation.');

  // 一个用于一个或多个的正则表达式
  var numbers = RegExp(r'\d+');

  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';

  // contains(正则表达式)
  print(!allCharacters.contains(numbers));
  print(someDigits.contains(numbers));

  // 用另一个字符串替换所有匹配的项
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  print(exedOut == 'llamas live XX to XX years');


  // 另一种正则匹配
  var numbers1 = RegExp(r'\d+');
  var someDigits1 = 'llamas live 15 to 20 years';

  // 检查RegExp是否在要匹配的字符串中
  print(numbers1.hasMatch(someDigits1));

  // 输出所有匹配项
  print("===============正则表达式=======================");
  print("原字符串:$someDigits1");
  print("匹配项：");
  for (final match in numbers1.allMatches(someDigits1)) {
    print(match.group(0)); 
  }
  print("===============================================");
}