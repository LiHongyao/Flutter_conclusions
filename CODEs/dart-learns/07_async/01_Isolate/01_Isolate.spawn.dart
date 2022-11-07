/*
 * @Author: Lee
 * @Date: 2022-11-03 14:57:57
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 15:12:11
 * @Description: 
 */

import 'dart:isolate';

void main(List<String> args) {
  multiThread();
}

void newThread1(String message) {
  print("当前线程：" + Isolate.current.debugName);
  print(message);
}

void newThread2(String message) {
  print("当前线程：" + Isolate.current.debugName);
  print(message);
}

void newThread3(String message) {
  print("当前线程：" + Isolate.current.debugName);
  print(message);
}

void multiThread() {
  print("multiThread start");

  print("当前线程：" + Isolate.current.debugName);
  // -- 开辟线程
  Isolate.spawn(newThread1, 'Hello1');
  Isolate.spawn(newThread2, 'Hello2');
  Isolate.spawn(newThread3, 'Hello3');

  print("multiThread end");
}
