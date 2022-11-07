/*
 * @Author: Lee
 * @Date: 2022-11-03 17:52:47
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 17:54:00
 * @Description: 
 */
void main(List<String> args) {
  // 创建Future实例
  final f = Future(() {
    print("Create the future.");
    return "Hello";
  });
  print(f);

  f.then((value) => print(value));

  print("Done with main.");
}
