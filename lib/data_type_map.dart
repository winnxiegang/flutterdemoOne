void main() {
  var map = {"key1": "value1", "key2": "value2", 1: "!"};
  print(map);
  print("map通过key得到数值");
  print(map["key1"]);
  print(map["key2"]);
  var map2 = const {"1": 2, "@": 4};
  print("const修饰的map不可修改");
  var list = ["1", "3", "1", 11, true];
  print("list.asMap()下标说对应的key");
  print(list.asMap());
}
