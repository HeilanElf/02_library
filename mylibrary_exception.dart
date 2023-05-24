const e="将整数赋值给字符串变量";
void main(){
  // 异常
  try {
    String value = 123; // 故意将整数赋值给字符串变量
    print(value.length);
  } catch (Error) {
    print("错误：$e");
  }


}