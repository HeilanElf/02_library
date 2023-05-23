void main(){
  // 字典使用经常用字符串作为键
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  //使用构造函数创建字典
  var searchTerms = Map();

  // 指定字典的键值类型
  var nobleGases = Map<int, String>();

  var nobleGases1 = {54: 'xenon'};

  // 检索键的值
  print(nobleGases[54] == 'xenon');

  // 检查字典中是否包含某个键
  print(nobleGases.containsKey(54));

  // 去除某个键值对
  nobleGases.remove(54);
  print(!nobleGases.containsKey(54));

  var hawaiianBeaches1 = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
    };

  // 得到字典中所有键的无序集合
  var keys = hawaiianBeaches1.keys;

  print(keys.length == 3);
  print(Set.from(keys).contains('Oahu'));

  // 得到字典中所有值的无序集合
  var values = hawaiianBeaches.values;
  print(values.length == 3);
  print(values.any((v) => v.contains('Waikiki')));

  var hawaiianBeaches2 = {
  'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
  };
  // 检查键是否存在
  print(hawaiianBeaches2.containsKey('Oahu'));
  print(!hawaiianBeaches2.containsKey('Florida'));

  // 给键赋值
  var teamAssignments = <String, String>{};
  //teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
  print(teamAssignments['Catcher'] != null);

  
}