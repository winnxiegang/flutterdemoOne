void main() {
  num a = 10; //num 类型包含两个 int double 所以可以切换赋值
  a = 1.5;
  print("num 类型包含两个 int double 所以可以切换赋值");
  int b = 10;
  // b = 10.5; error
  print("int 类型无法转换为double");
  double c = 10.5;
  // c = 10;
  print("double类型可转换为int，但是输出的还是double类型" + c.toString());
  print(b + c);
  print(b - c);
  print(b * c);
  print(b / c);
  print("输的出的浮点类型" + (b ~/ c).toString()); //
  print(b % c);
  print( b.isOdd);
}

/**
 * @Description:
 * @Author:         xiegang
 * @CreateDate:     2019/6/3 15:00
 * @UpdateUser:     更新者：
 * @UpdateRemark:   更新说明：
 * @Version:        1.0
 * 类型中 Numb
 */
