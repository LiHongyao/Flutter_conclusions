/*
 * @Author: Lee
 * @Date: 2022-11-03 22:23:40
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 22:26:52
 * @Description: 
 */

void main(List<String> args) {
  print("start");

  // 返回最先完成的异步任务
  Future.any([
    Future.delayed(Duration(seconds: 4)).then((value) => 1),
    Future.delayed(Duration(seconds: 2)).then((value) => 2),
    Future.delayed(Duration(seconds: 3)).then((value) => 3),
  ]).then((value) => print("多个 Future 的最快的返回结果是：$value"));

  print("end");
}
