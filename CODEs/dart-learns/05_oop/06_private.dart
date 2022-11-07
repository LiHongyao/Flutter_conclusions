/*
 * @Author: Lee
 * @Date: 2022-11-02 14:08:00
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 14:14:15
 * @Description: 
 */

import 'lib/Person.dart';

void main(List<String> args) {
  var p = new Person("张三");
  print(p.name);

  // 访问私有属性
  // print(p._money);

  print(p.getMoney());

  // 访问私有方法
  // p._wife();
}
