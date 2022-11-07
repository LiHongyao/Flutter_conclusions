/*
 * @Author: Lee
 * @Date: 2022-11-03 17:06:22
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 17:31:08
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

  // -- 接收新线程传递过来的SendPort
  SendPort p2 = await r1.first;

  // -- 发送消息给新线程/接收新线程传回的消息
  var msg = await sendToReceive(p2, "Hello，我是主线程！");
  print("主线程接收到：$msg");
}

void newThread(SendPort p1) async {
  print("当前线程：" + Isolate.current.debugName);

  // -- 创建通信：接收对象/发送对象
  ReceivePort r2 = ReceivePort();
  SendPort p2 = r2.sendPort;

  // -- 发送消息给main线程
  p1.send(p2);
  await for (var msg in r2) {
    var data = msg[0];
    print("新线程收到了来自主线程的消息：$data");
    SendPort replyPort = msg[1];
    // 给主线程回复消息
    replyPort.send("已收到~");
  }
}

Future sendToReceive(SendPort port, msg) {
  print("发送消息给新线程：$msg");
  ReceivePort response = ReceivePort();
  port.send([msg, response.sendPort]);
  return response.first;
}
