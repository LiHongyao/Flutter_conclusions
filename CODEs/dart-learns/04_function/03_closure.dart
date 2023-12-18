/*
 * @Author: Lee
 * @Date: 2022-11-01 14:17:54
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-01 14:22:56
 * @Description: 
 */

// 全局变量
var globalNum = 100;
void main(List<String> args) {
  // -- 作用域
  printInfo() {
    // 局部变量
    var localNum = 10;
    print(localNum);
    print(globalNum); // 可以再函数作用域中，访问全局变量
  }

  printInfo();
  // print(localNum); // 不能在全局作用域中，访问局部变量

  // -- 闭包
  parent() {
    var money = 1000;
    return () {
      money -= 100;
      print(money);
    };
  }

  var p = parent();
  p(); // 900
  p(); // 800
  p(); // 700
}
