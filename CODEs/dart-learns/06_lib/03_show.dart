/*
 * @Author: Lee
 * @Date: 2022-11-03 10:10:30
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 10:11:34
 * @Description: 
 */

// -- show 后面指定包含引入的内容
import 'lib/common.dart' show f1, f3;

void main(List<String> args) {
  f1();
  // f2(); // 报错
  f3();
}
