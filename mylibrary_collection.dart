void main(){
  // 收集包含lists,set,maps 以下是一些常用方法
  var coffees = <String>[];
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  print(coffees.isEmpty);
  print(teas.isNotEmpty);
  var teas1 = ['green', 'black', 'chamomile', 'earl grey'];
   print("=============list迭代===========================");
  teas1.forEach((tea) => print('I drink $tea'));
  var hawaiianBeaches = {
  'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
  };

  // 迭代
   print("===========maps迭代==============================");
  hawaiianBeaches.forEach((k, v) {
  print('I want to visit $k and swim at $v');
  });
   print("===============================================");
  var teas2 = ['green', 'black', 'chamomile', 'earl grey'];

  var loudTeas = teas2.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print);

  var loudTeas1 = teas2.map((tea) => tea.toUpperCase()).toList();

  var teas3 = ['green', 'black', 'chamomile', 'earl grey'];

  //检查收集中不含某个元素 
  bool isDecaffeinated(String teaName) => teaName == 'chamomile';

  // 只查找并返回true的项
  var decaffeinatedTeas = teas3.where((tea) => isDecaffeinated(tea));
  
  // 检查是否至少有一个项满足
  print(teas3.any(isDecaffeinated));

  // 检查每一个项是否都满足
  print(!teas3.every(isDecaffeinated));
}