
import 'bean/personBena.dart';
void main() {
  var person = Person(); // var person = new  Person(); 两者都行
  person.name = "xg";
  person.age = 18;
  print(person.name);
  print(person.age);
  print(person.type);
  person.work();
  person.printMessasge();
  // person.type="11"; type' can't be used as a setter because it is final 只能读取
}
