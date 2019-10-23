void main() {
  var count = 0;
  while (count < 5) {
    print(count++); //打印4 之后再加1 变为5
  }
  do {
    print(count--);
  } while (count > 0 && count < 5);
}
