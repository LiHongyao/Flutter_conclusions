/*
 * @Author: Lee
 * @Date: 2022-11-02 15:00:58
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 15:09:11
 * @Description: 
 */
import 'Father.dart';

class Son extends Father {
  String name = "刘禅";

  // 通过 super 继承父类普通构造函数
  Son(String job) : super(job);

  // 继承命名构造函数
  // Son(String job) : super.origin(job);
  Son.origin(String job) : super.origin(job);

  @override
  say() {
    super.say();
    print("我是 刘禅，我爹是 ${super.name}，他是 ${super.job}");
  }
}
