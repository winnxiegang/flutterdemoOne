void main() {
  var a = 4; //变量
  print(a);
  a = 6;
  print("var可变的量" + a.toString());
  final b = "final不可变的量";
  // b = "ffff"; 错误'b', a final variable, can only be set once
  print(b);
  const c = 000;
  print("const不可变的量" + c.toString());
}

/**
 * @Description:
 * @Author:         xiegang
 * @CreateDate:     2019/6/3 14:52
 * @UpdateUser:     更新者：
 * @UpdateRemark:   更新说明：
 * @Version:        1.0
 * 变量 和常量
 */
