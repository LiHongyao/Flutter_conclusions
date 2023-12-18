/*
 * @Author: Lee
 * @Date: 2022-11-03 13:41:58
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 13:45:59
 * @Description: 
 */
// 扩展内置类
extension StringExtension on String {
  // 将字符串形式的数字，转成数字
  parseInt() {
    return int.parse(this);
  }
}

// 扩展自定义类
class Person {
  say() {
    print("Say something");
  }
}

extension StudentPerson on Person {
  study() {
    print("Study hard");
  }
}

void main(List<String> args) {
  String number = "20";
  print(number.parseInt());

  Person p = Person();
  p.say();
  p.study();
}
