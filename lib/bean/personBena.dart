class Person {
  /**
   * 不需要手动添加set get 和kotlin差不多
   * _Person
   * _name
   * 前面加上横杠 说明是私有的 外界不能调用
   */
  String name;
  int age;
  final String type = "final修饰的必须默认值"; //必须默认值
  String _sex = "man";

  Person();

  //Person(this.name, this.age); The default constructor is already defined

  void work() {
    print("方法不能重载，例如work(Strring name ) 会报错The name 'work' is already defined");
  }

  void printMessasge() {
    print(_sex + "前面加上横杠 说明是私有的 外界不能调用只能内部调用");
  }
}
