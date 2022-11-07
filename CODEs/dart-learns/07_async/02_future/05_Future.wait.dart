/*
 * @Author: Lee
 * @Date: 2022-11-03 22:26:49
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-04 09:13:36
 * @Description: 
 */
void main(List<String> args) {
  print("start");

  // 等待所有异步任务完成，并收集所有异步任务执行的结果
  Future.wait([
    Future.delayed(Duration(seconds: 4)).then((value) {
      print("Future 1");
      return 1;
    }),
    Future.delayed(Duration(seconds: 2)).then((value) {
      print("Future 2");
      return 2;
    }),
    Future.delayed(Duration(seconds: 3)).then((value) {
      print("Future 3");
      return 3;
    }),
  ]).then((value) {
    print("所有 Future 的执行结果是：$value");
  });

  print("end");
}
