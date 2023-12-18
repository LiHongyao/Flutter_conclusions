/*
 * @Author: Lee
 * @Date: 2022-11-04 09:58:49
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-04 10:04:09
 * @Description: 
 */

import 'dart:async';

void main(List<String> args) {
  // 创建单一订阅数据流
  final StreamController controller = StreamController();
  // 第一次监听
  controller.stream.listen((event) {
    print("Data is $event.");
  });
  // 第二次监听 - 会报错
  /*controller.stream.listen((event) {
    print("Data is $event.");
  });*/

  // 给数据流添加数据
  controller.sink.add("abc");
  controller.sink.add("123");
}
