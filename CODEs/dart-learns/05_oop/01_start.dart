/*
 * @Author: Lee
 * @Date: 2022-11-02 11:18:38
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 11:22:33
 * @Description: 
 */

// 声明类
class Person {
  // 类的属性
  String name = "张三";

  // 类的方法
  void sayHello() {
    print("Hello，$name！");
  }
}

void main(List<String> args) {
  // 实例化类，然后得到一个对象
  Person p = new Person();

  // 访问类中的属性
  print(p.name);

  // 访问类的方法
  p.sayHello();

  // Dart 中 所有的内容都是对象
  Map m = new Map();
  print(m.length);

  m.addAll({"name": "李四", "age": 20});
  print(m.length);
}
