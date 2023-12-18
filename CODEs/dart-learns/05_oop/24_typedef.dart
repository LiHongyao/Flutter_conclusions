/*
 * @Author: Lee
 * @Date: 2022-11-03 14:06:31
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 14:14:00
 * @Description: 
 */

typedef MathOperation(int a, int b);

// 声明加法运算
plus(int a, int b) {
  print("加法运算：${a + b}");
  return a + b;
}

add(int a, int b, int c) {
  print("加法运算：${a + b + c}");
  return a + b + c;
}

// 声明减法运算
minus(int a, int b) {
  print("减法运算：${a - b}");
  return a - b;
}

// 计算器
calculator(int a, int b, MathOperation op) {
  print("计算器");
  op(a, b);
}

void main(List<String> args) {
  print(add is MathOperation); // false
  print(add is Function); // true

  print(plus is MathOperation); // true
  print(plus is Function); // true

  print(minus is MathOperation); // true
  print(minus is Function); // true

  MathOperation op = plus;
  op(20, 10); // 加法运算：30

  op = minus;
  op(20, 10); // 加法运算：30

  calculator(8, 5, plus);
  calculator(8, 5, minus);
}
