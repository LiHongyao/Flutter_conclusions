/*
 * @Author: Lee
 * @Date: 2022-11-02 11:34:01
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 11:36:29
 * @Description: 
 */

class Point {
  num x, y;
  Point(this.x, this.y);

  // 命名构造函数
  Point.origin() {
    x = 0;
    y = 0;
  }

  // 命名构造函数
  Point.fromJson({x: 0, y: 0}) {
    this.x = x;
    this.y = y;
  }
}

void main(List<String> args) {
  // 默认坐标
  Point p1 = new Point.origin();
  print(p1.x);

  // 手动设置坐标
  Point p2 = new Point.fromJson(x: 6, y: 6);
  print(p2.x);
}
