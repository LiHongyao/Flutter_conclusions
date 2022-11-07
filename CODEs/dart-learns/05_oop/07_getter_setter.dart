/*
 * @Author: Lee
 * @Date: 2022-11-02 14:16:29
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 14:21:27
 * @Description: 
 */

class Circle {
  final double PI = 3.14;
  num r;
  Circle(this.r);

  //  Getters

  // num area() {
  //   return this.PI * this.r * this.r;
  // }

  /** 使用 get 声明的方法，不能有小括号 */
  num get area {
    return this.PI * this.r * this.r;
  }

  // Setters
  set setR(value) {
    this.r = value;
  }
}

void main(List<String> args) {
  var c = new Circle(10);

  // 通过 Getter 访问面积
  print(c.area);
  // 通过 Setter 修改属性
  c.setR = 20;
}
