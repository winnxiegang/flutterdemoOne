void main() {
  var list = [1, 2, 3, 45, 6, 6, 67, 7, 3];
  //需要下标的循环
  for (var index = 0; index < list.length; index++) {
    print(list[index]);
  }
  //不需要下标的循环
  for (var item in list) {
    print(item);
  }
}
