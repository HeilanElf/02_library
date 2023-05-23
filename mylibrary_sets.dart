void main(){
  //创建一个空的字符串集合
  var ingredients = <String>{};

  // 向集合里面添加元素
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  print(ingredients.length == 3);

  //在集合里面添加重复的项是没有效果的
  ingredients.add('gold');
  print(ingredients.length == 3);

  // 去除集合中的元素
  ingredients.remove('gold');
  print(ingredients.length == 2);

  // 使用构造函数创造集合
  var atomicNumbers = Set.from([79, 22, 54]);

  var ingredients1 = Set<String>();
  ingredients1.addAll(['gold', 'titanium', 'xenon']);

  // 检查某个元素是否在集合中
  print(ingredients1.contains('titanium'));

  // 检查所有元素是否在集合中
  print(ingredients1.containsAll(['titanium', 'xenon'])); 

  var ingredients2 = Set<String>();
  ingredients2.addAll(['gold', 'titanium', 'xenon']);

  // 创造两个集合的交集
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  print(intersection.length == 1);
  print(intersection.contains('xenon'));
  
}