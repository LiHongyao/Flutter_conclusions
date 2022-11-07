/*
 * @Author: Lee
 * @Date: 2022-11-03 17:33:24
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 17:51:16
 * @Description: 
 */
import 'dart:isolate';

void main(List<String> args) {
  start();

  // 执行耗时操作
  newIsolate();

  init();
}

void start() {
  print("应用启动：" + DateTime.now().microsecondsSinceEpoch.toString());
}

void newIsolate() async {
  print("新线程创建");

  ReceivePort r = ReceivePort();
  SendPort p = r.sendPort;
  // 创建新线程
  Isolate childIsolate = await Isolate.spawnUri(
    Uri(path: "./childIsolate.dart"),
    ["data1", "data2"],
    p,
  );
  // 监听消息
  r.listen((message) {
    print("主线程接收到数据：$message[0]");
    if (message[1] == 1) {
      // 异步任务正在处理
    } else if (message[1] == 2) {
      // 异步任务处理完成
      r.close(); // 取消监听
      childIsolate.kill(); // 杀死新线程，释放资源
      print("子线程已经释放");
    }
  });
}

void init() {
  print("项目初始化...");
}
