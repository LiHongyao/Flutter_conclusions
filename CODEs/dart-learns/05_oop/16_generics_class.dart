/*
 * @Author: Lee
 * @Date: 2022-11-02 17:00:03
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 17:07:49
 * @Description: 
 */

class CommonClass {
  Set s = new Set<int>();

  void add(int value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

// 泛型类
class GenericsClass<T> {
  Set s = new Set<T>();

  void add(T value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

void main(List<String> args) {
  CommonClass c = new CommonClass();
  c.add(1);
  c.add(2);
  c.info();

  // 实例化泛型类
  GenericsClass g = new GenericsClass<int>();
  g.add(1);
  g.add(2);
  g.info();

  GenericsClass g1 = new GenericsClass<String>();
  g1.add('1');
  g1.add('2');
  g1.info();

  // Set s = new Set();
  // s.add(1);
  // s.add("Hello");
  // print(s);

  // Set s = new Set<int>();
  // s.add(1);
  // // s.add("Hello"); // 报错
  // s.add(3);
  // print(s);

  // 字面量形式的泛型
  Set s = <int>{};
  s.add(1);
  // s.add("Hello"); // 报错
  s.add(3);
  print(s);
}
