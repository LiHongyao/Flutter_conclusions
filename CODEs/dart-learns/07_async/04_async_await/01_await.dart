/*
 * @Author: Lee
 * @Date: 2022-11-07 14:34:23
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-07 14:35:03
 * @Description: 
 */
test() {
  return Future.delayed(Duration(seconds: 2), () {
    print("Future.delayed");
    return 123;
  });
}

void main(List<String> args) async {
  print("start");

  // 等待 test 执行完成
  await test();

  print("end");
}
