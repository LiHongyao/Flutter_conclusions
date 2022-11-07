/*
 * @Author: Lee
 * @Date: 2022-11-01 11:26:43
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-01 14:13:55
 * @Description: 
 */

void main(List<String> args) {
  // -- 必填参数
  String userInfos1(String name) {
    return "你好：$name";
  }

  String res1 = userInfos1("张三");
  print(res1);

  // -- 可选参数
  String userInfos2(String name, [int age = 0]) {
    return "你好：$name，年龄：$age";
  }

  String res2 = userInfos2("张三", 20);
  print(res2);

  // -- 命名参数
  String userInfos3(String name, {int age = 0}) {
    return "你好：$name，年龄：$age";
  }

  /** 命名函数调用时，需要与声名时的形参一致 */
  String res3 = userInfos3("张三", age: 20);
  print(res3);

  // -- 函数参数
  var myPrint = (value) {
    print(value);
  };
  List fruits = ['apple', "banana", "watermelon"];
  /** 将匿名函数 myPrint 传递给函数 forEach */
  fruits.forEach(myPrint);
}
