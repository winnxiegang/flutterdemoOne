void main() {
  var person2 = new Person2("xg", "18", "man");
  print("名字是${person2.name},年龄是${person2.age},性别是${person2.gender}");
  print("final修饰的最终的，并且已经在声明中初始化赋值方法");
//  创建Map：var language={“first”:“Dart”,“two”:“java”};
//
//  创建不可变Map：var language=const{“first”:“Dart”,“two”:“java”};
//
//  构造创建：var language=new Map();
  var personMap = new Map();
  /**
   *   初始化给map赋值 key valus
   */

  personMap["name"] = "name";
  personMap["age"] = "age";
  personMap["gender"] = "gender";
//  new Person2.initGender(personMap);
  print(
      "名字是${Person2.initGender(personMap).name},年龄是${Person2.initGender(personMap).age},性别是${Person2.initGender(personMap).gender}");
  print(
      "名字是${person2.name},年龄是${person2.age},性别是${Person2.initGender(personMap).gender}");
}

class Person2 {
  String name;
  String age;
  final String gender;

  Person2(this.name, this.age, this.gender);

  /**
   * 如果它们是最终的，并且已经在声明中初始化。 下面仅仅初始化Gender
   * Fields can't be initialized in the constructor if they are final and have already been initialized at their declaration.
   */
  Person2.initGender(Map map) : gender = map["gender"] {
   // this.name = map["name"];
   // this.age = map["age"];
  }

  Person2.initGender2(Map map)
      : name = map["name"],
        age = map["age"],
        gender = map["gender"] {}
}
