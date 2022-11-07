/*
 * @Author: Lee
 * @Date: 2022-11-02 14:56:52
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 15:09:36
 * @Description: 
 */

import 'lib/Father.dart';
import 'lib/Son.dart';

void main(List<String> args) {
  var f = new Father("皇帝");
  print(f.name);

  // var s = new Son("皇帝");
  var s = new Son.origin("卖草鞋的");
  print(s.name);
  // print(s._momney); // 子类不能访问父类中的私有内容
  print(s.getMoney);
  s.say();
}
