/*
 * @Author: Lee
 * @Date: 2022-11-02 11:24:13
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 11:31:15
 * @Description: 
 */

/// 写法1
class Point1 {
  // num x;
  // num y;
  num x, y;

  // 声明普通构造函数
  Point1() {
    print("我是默认构造函数，实例化时，会第一个被调用");

    // -- this可以省略
    // x = 0;
    // y = 0;

    // -- 当命名指向有歧义时，this 不能省略
    this.x = 0;
    this.y = 0;
  }
}

/// 写法2
class Point2 {
  num x, y;

  // 声明普通构造函数
  Point2(num x, num y) {
    this.x = x;
    this.y = y;
  }
}

/// 写法3
class Point3 {
  num x, y;

  // 声明普通构造函数
  Point3(this.x, this.y);
}

void main(List<String> args) {
  var p1 = new Point1();
  print(p1.x);

  var p2 = new Point2(10, 20);
  print(p2.x);

  var p3 = new Point3(10, 20);
  print(p3.x);
}
