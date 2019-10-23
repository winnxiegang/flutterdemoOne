import 'bean/compe_entity.dart';

void main() {
  var person = new Person("xg", 11, "woman");
  print(person.name);
  print(person.age);
  var person2 = new Person.withAge(12);
  print(person2.age);
  var person3 = new Person.withName("666");
  print(person3.name);
  var compeEntity = CompeEntity();
  //compeEntity = CompeEntity.fromJson("json");
  print(compeEntity.data.checkCode);
}

class Person {
  String name;
  int age;
  String sex;

//语法糖形式 构造方法
  Person(this.name, this.age, this.sex);

  /**
   * dart 中只能存在一个构造方法名The default constructor is already defined
   * 可以通过其他 Person.withName 这样的方法设置属性
   */
  //Person(this.name, this.age);

  Person.withName(String name) {
    this.name = name;
  }

  Person.withAge(int age) {
    this.age = age;
  }
}
