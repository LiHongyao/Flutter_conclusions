import 'dart:io';
import 'dart:isolate';

void main(List<String> args, SendPort mainSendPort) {
  print("新线程接收到的参数：$args");

  mainSendPort.send(["开始执行异步操作", 0]);
  sleep(Duration(seconds: 1));
  mainSendPort.send(["加载中...", 1]);
  sleep(Duration(seconds: 1));
  mainSendPort.send(["异步任务完成", 2]);
}
