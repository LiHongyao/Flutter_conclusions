/*
 * @Author: Lee
 * @Date: 2022-11-03 10:16:24
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 10:19:04
 * @Description: 
 */

import 'lib/common.dart';
import 'lib/function.dart' as func; // 给库添加前缀，解决命名冲突问题

void main(List<String> args) {
  f1();
  func.f1();
}
