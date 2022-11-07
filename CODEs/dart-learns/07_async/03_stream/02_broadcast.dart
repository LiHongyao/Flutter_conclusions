import 'dart:async';

void main(List<String> args) {
  // 创建广播流
  StreamController controller = StreamController.broadcast();

  // 第一次监听
  controller.stream.listen((event) {
    print("Data1 is $event.");
  });
  // 给数据流添加数据
  controller.sink.add("abc");

  // 第二次监听
  controller.stream.listen((event) {
    print("Data2 is $event.");
  });
  // 给数据流添加数据
  controller.sink.add("123");
}
