/*
 * @Author: Lee
 * @Date: 2022-11-03 13:57:20
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 14:02:01
 * @Description: 
 */
class Person {
  say() {
    print("Say something");
  }
}

// -- 单例
class Singleton {
  static Singleton instance;

  Singleton._internal();

  static getInstance() {
    if (instance == null) {
      instance = Singleton._internal();
    }
  }

  factory Singleton() => getInstance();
}

void main(List<String> args) {
  var p1 = Person();
  var p2 = Person();
  print(p1.hashCode);
  print(p2.hashCode);
  print(p1 == p2); // false

  var s1 = Singleton();
  var s2 = Singleton();
  print(s1.hashCode);
  print(s2.hashCode);
  print(s1 == s2); // true
}
