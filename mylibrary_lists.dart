void main(){
  // 创建一个空字符列表
  var grains = <String>[];
  print(grains.isEmpty);

  //使用列表文字创建列表
  var fruits = ['apples', 'oranges'];

  // 在列表后添加一个元素
  fruits.add('kiwis');

  // 向列表中添加多个元素
  fruits.addAll(['grapes', 'bananas']);

  // 获取列表长度
  print(fruits.length == 5);

  // 去除列表某个项目
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  print(fruits.length == 4);

  //去除列表所有元素
  fruits.clear();
  print(fruits.isEmpty);

  // 使用构造函数创建列表
  var vegetables = List.filled(99, 'broccoli');
  print(vegetables.every((v) => v == 'broccoli'));

  var fruits1 = ['apples', 'oranges'];

  // 按索引访问列表项
  print(fruits1[0] == 'apples');

  // 获取元素的列表索引
  print(fruits1.indexOf('apples') == 0);

  // 对列表进行排序
  print("==============列表排序=========================");
  var fruits2 = ['bananas', 'apples', 'oranges'];
  print("排序前:$fruits2");
  fruits2.sort((a, b) => a.compareTo(b));
  print("排序后:$fruits2");
  print("===============================================");
  print(fruits2[0] == 'apples');

  // 只能包含字符串的列表，参数类型是泛型
  var fruits3 = <String>[];
  fruits3.add('apples');
  var fruit = fruits3[0];
  print(fruit is String);
  
}