void main() {
  Function func = printHellow; //方法可以对象传给其他变量
  func();
  var list = ["a", "v", "f", "c", "f"];
  var list2 = ["a", "v", "f", "c", "f", "g"];
  var list3 = ["a", "v", "f", "c", "f", "g", "g"];
  print(getList(list, times));
  //匿名内部类(str) {
  //    return str * 3;
  //  }) 匿名方法作为参数传给其他类
  print(getList2(list2, (str) {
    return str * 3;
  }));
  print(getList3(list3));
}

void printHellow() {
  print("Hellow");
}

/**
 * 方法可以对象传给其他变量
 *  void forEach(void f(E element)) {
    for (E element in this) f(element);
    }
    times(str) 方法定义而已 x(str)也行
 */
List getList(List list, String times(str)) {
  for (var index = 0; index < list.length; index++) {
    list[index] = times(list[index]);
  }
  return list;
}

String times(str) {
  return str * 3;
}

/**
 * 匿名方法
 * (){}//参数 方法体
 */
List getList2(List list, String times(str)) {
  for (var index = 0; index < list.length; index++) {
    list[index] = times(list[index]);
  }
  return list;
}

List getList3(List list) {
  var function = (str) {
    return str * 3;
  };
  for (var index = 0; index < list.length; index++) {
    list[index] = times(list[index]);
  }
  return list;
}
