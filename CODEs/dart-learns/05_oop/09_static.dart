/*
 * @Author: Lee
 * @Date: 2022-11-02 14:36:29
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 14:49:28
 * @Description: 
 * 
 */
class Person {
  static String name = "张三";
  int age = 18;

  static printInfos() {
    // print(this.name); // 不能通过 this 关键字，访问静态属性
    print(name);

    // 静态方法中不能访问非静态属性
    // print(age);

    // 静态方法中不能访问非静态方法
    // printUserInfos();
  }

  printUserInfos() {
    // 非静态方法，可以访问静态属性
    print(name);
    print(age);

    // 非静态方法，可以访问静态方法
    printInfos();
  }
}

void main(List<String> args) {
  // 静态成员，可以通过类名称直接访问
  print(Person.name);
  print(Person.printInfos());

  // 不能通过类名称，直接访问非静态方法
  // Person.printUserInfos();

  var p = new Person();
  // print(p.name); // 不能通过实例化对象去访问静态属性

  p.printUserInfos();
}
