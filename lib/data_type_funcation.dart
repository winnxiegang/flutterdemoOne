void main() {
  getPerson("xg", 11);
  getPerson2("xg", 11);
  getPerson3("xg", 11);
  getPerson4("xg", 11);
  printPerason("xg", 1, "man");
  printPerason(
    "xg",
    1,
  );
  printPerason("xg");
  printPerason2("xg", age: 1, sex: "man");
  printPerason2("xg", sex: "man");
  //默认参数值
  printPerason3("xg", sex: "man", age: 1);
  printPerason3("xg", sex: "man");
}

String getPerson(String name, int age) {
  print("name=$name age=$age");
}

//箭头语法
getPerson2(String name, int age) => print("name=$name age=$age");

/**
 *  dart的方法中返回类型 参数 都可以省略
 */
getPerson3(name, age) {
  print("name=$name age=$age");
}

//三目运算符
var type = 1;

getPerson4(name, age) => type == 1 ? print("name=$name age=$age") : "Test";
/**
 * 【】不需要根据名称来存入 他是基于位置的对应打印
 * String name 固定参数
 * int age, String sex可选参数
 * 固定参数一定在可选参数前面
 */
printPerason(String name, [int age, String sex]) {
  print("name=$name, age=$age, sex=$sex");
}

/**
 * {}   必须根据名称来进行参数的传入使用对应打印
 * printPerason2("xg", age: 1, sex: "man");
 *   printPerason2("xg", sex: "man");
 */
printPerason2(String name, {int age, String sex}) {
  print("name=$name, age=$age, sex=$sex");
}

printPerason3(String name, {int age = 10, String sex = "woman"}) {
  print("name=$name, age=$age, sex=$sex");
}
