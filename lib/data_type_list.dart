void main() {
  var list1 = [1, 3, 4, 5, "fff", true];
  print("dart list中 可以不同的类型");
  print(list1[0]);
  print(list1[3]);
  list1[0] = "ggg";
  print(list1);
  var list2 = const [1, 2, 3, "44", true];
  print("const修改的list不可修改");
  var list3 = List<String>();
  list3.add("1");
  list3.add("2");
  list3.add("31");
  list3.add("13");
  list3.add("11");
  print(list3);
  list3.removeAt(1);
  print(list3);
  list3.forEach(print);
}
