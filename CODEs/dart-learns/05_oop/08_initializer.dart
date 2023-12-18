/*
 * @Author: Lee
 * @Date: 2022-11-02 14:24:25
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 14:38:25
 * @Description: 
 */

class Rect {
  int width;
  int height;

  // Rect(this.width, this.height);

  // Rect([int width = 2, int height = 2]) {
  //   this.width = width;
  //   this.height = height;
  //   print("${this.width} -- ${this.height}");
  // }

  // Rect({int width = 2, int height = 2}) {
  //   this.width = width;
  //   this.height = height;
  //   print("${this.width} -- ${this.height}");
  // }

  Rect()
      : width = 4,
        height = 20 {
    print("${this.width} -- ${this.height}");
  }
}

class Point {
  double x, y, z;

  Point(this.x, this.y, this.z);

  // 初始化列表的特殊用法（重定向构造函数）
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main(List<String> args) {
  new Rect();

  var p1 = new Point(1, 2, 3);
  print(p1.z);

  var p2 = new Point.twoD(4, 5);
  print(p2.z);
}
