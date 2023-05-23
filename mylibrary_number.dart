void main(){
  // 使用 int 和 double 的方法将字符串转换为整数或双精度
  print(int.parse('42') == 42);
  print(int.parse('0x42') == 66);
  print(double.parse('0.50') == 0.5);
  // 使用 num 的 parse（） 方法
  print(num.parse('42') is int);
  print(num.parse('0x42') is int);
  print(num.parse('0.50') is double);
  print(int.parse('42', radix: 16) == 66);
  // 该方法转换整数或双精度为字符串.
  print(42.toString() == '42');
  print(123.456.toString() == '123.456');
  // 指定小数点后位数
  // Specify the number of digits after the decimal.
  print(123.456.toStringAsFixed(2) == '123.46');

  // 指定有效的数字数目
  print(123.456.toStringAsPrecision(2) == '1.2e+2');
  print(double.parse('1.2e+2') == 120.0);
}