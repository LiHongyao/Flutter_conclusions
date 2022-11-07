/*
 * @Author: Lee
 * @Date: 2022-11-02 16:54:26
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 16:58:39
 * @Description: 
 */

// String getData(String value) {
//   return value;
// }

// int getData(int value) {
//   return value;
// }

// 不指定数据类型的函数
// getData(value) {
//   return value;
// }

// 泛型函数
T getData<T>(T value) {
  return value;
}

//

void main(List<String> args) {
  // print(getData("Hello"));
  // print(getData(10));

  // 调用泛型函数
  print(getData<int>(20));
  print(getData<String>("Hello"));
  print(getData<bool>(true));
}
