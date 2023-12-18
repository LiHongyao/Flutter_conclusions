/*
 * @Author: Lee
 * @Date: 2022-11-03 10:20:39
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 10:25:23
 * @Description: 
 */

import 'lib/function.dart' deferred as func;

void main(List<String> args) {
  // func.hello(); // -- Deferred library func was not loaded.
  print("1");
  greet();
  print("2");
  print("3");
}

Future greet() async {
  await func.loadLibrary();
  func.hello();
}
