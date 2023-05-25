import 'dart:math';
void main(){
  print("===================三角函数=========================");
  // Cosine
  print(cos(pi) );

  // Sine
  var degrees = 30;
  var radians = degrees * (pi / 180);
  // 弧度是30*(pi/180)
  var sinOf30degrees = sin(radians);
  // sin 30° = 0.5
  print((sinOf30degrees - 0.5).abs() );

  print("===================最大最小=========================");
  print(max(1, 1000) );
  print(min(1, -1000));
  print("===================数学常量=========================");
  // 还有其他常量，不做介绍
  print(e); // 2.718281828459045
  print(pi); // 3.141592653589793
  print(sqrt2); // 1.4142135623730951
  print("===================随机数=========================");
  var random = Random();
  var a=random.nextDouble(); // 产生 [0, 1)中某个小数
  print(a);
  var a1=random.nextInt(10); //产生[0,9)中某个数
  print(a1);
  var a2=random.nextBool();//产生true或者false
  print(a2);


}