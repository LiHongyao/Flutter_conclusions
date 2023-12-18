/*
 * @Author: Lee
 * @Date: 2022-11-01 11:11:13
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-01 11:23:53
 * @Description: 
 */

// Dart 中声明函数，不需要 function 关键字
void printInfo() {
  print("Hello, World!");
}

// 返回值，与函数声明的类型要一致
int getNum() {
  return 1;
}

void main(List<String> args) {
  // -- 调用函数
  printInfo();
  print(getNum());

  // -- 匿名函数
  var myPrint = (value) {
    print(value);
  };
  List fruits = ['apple', "banana", "watermelon"];
  fruits.forEach(myPrint);

  // -- 箭头函数
  fruits.forEach((element) => print(element) /*箭头函数中，不能写结束的分好(;)，花括号可省略*/);

  // -- 立即执行函数
  ((String name) {
    print("Hello, $name!");
  })("Lee");
}
