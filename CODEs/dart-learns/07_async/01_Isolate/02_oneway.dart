/*
 * @Author: Lee
 * @Date: 2022-11-03 16:59:08
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 17:27:56
 * @Description: 
 */
import 'dart:isolate';

void main(List<String> args) {
  multiThread();
}

void multiThread() async {
  print("当前线程：" + Isolate.current.debugName);

  // -- 创建通信：接收对象/发送对象
  ReceivePort r1 = ReceivePort();
  SendPort p1 = r1.sendPort;
  // -- 开辟新线程
  Isolate.spawn(newThread, p1);
  // -- 接收新线程发送过来的消息
  r1.listen((msg) {
    print("来自新线程的消息：$msg");
    r1.close();
  });
}

void newThread(SendPort p1) {
  print("当前线程：" + Isolate.current.debugName);
  // -- 发送消息给main线程
  p1.send("Hello，我是新线程！");
}
