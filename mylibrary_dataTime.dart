void main(){
  //创建当前的日期时间对象 
  var now = DateTime.now();

  // 创建一个新时间的DataTime对象
  var y2k = DateTime(2000); // January 1, 2000

  //指定月份你和日期 
  y2k = DateTime(2000, 1, 2); // January 2, 2000

  // 指定时间为UTC格式
  y2k = DateTime.utc(2000); // 1/1/2000, UTC

  // 指定从Umix纪元开始的日期和时间
  y2k= DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);

  // 解析UTC时区中的ISO 8601日期
  y2k = DateTime.parse('2000-01-01T00:00:00Z');

  // 从现有时间常见一个对象并调整属性
  var sameTimeLastYear = now.copyWith(year: now.year - 1);
  print("========日期和时间==================================");
  print(now);
  print(y2k);
  print("===============================================");

  //使用 Duration 类计算两个日期和 要向前或向后移动日期：
  print("===============================================");

  var y2k1 = DateTime.utc(2000);

  // 加上一年
  var y2001 = y2k1.add(const Duration(days: 366));
  print(y2001.year);

  // 减去30天
  var december2000 = y2001.subtract(const Duration(days: 30));
  print(december2000.year );
  print(december2000.month );

  // 计算两个日期之间的差
  var duration = y2001.difference(y2k);
  print(duration.inDays ); // 
  print("===============================================");

}