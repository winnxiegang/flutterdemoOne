
void main() {
  var rectangle = new Rectangle();
  rectangle.wight = 20;
  rectangle.height = 10;
  print(rectangle.area());
  print(rectangle.area2); //计算属性
  rectangle.area2 = 200;
  print(rectangle.wight);
  //print(rectangle.area3); //计算属性
}

class Rectangle {
  num wight, height;

//方法
  num area() {
    return wight * height;
  }

//计算属性
  num get area2 {
    return wight * height;
  }

  set area2(value) {
    wight = value / 18;
  }

 // num get area3 => wight * height;
}
