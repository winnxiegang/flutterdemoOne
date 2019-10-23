/**
 * @Description:
 * @Author:         xiegang
 * @CreateDate:     2019/6/5 10:53
 * @UpdateUser:     更新者：
 * @UpdateRemark:   更新说明：
 * @Version:        1.0
 * 对象操作符 ？  空置判断
 *            as 对象转换
 *            is  是否是
 *            is！ 是否不是
 *             .. 级联操作符
 * person2..name = "xg"
          ..age = 14;
 */

void main() {
  /**
   * 以下是空的对象报的错
   * The method 'work' was called on null.
   */
  Person person;
  person?.work();
  Person person2 = Person();
  person2
    ..name = "xg"
    ..age = 14;
  person2.work();
}

class Person {
  String name;
  int age;

  void work() {
    print("work");
  }
}
