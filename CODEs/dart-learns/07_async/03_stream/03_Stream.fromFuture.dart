/*
 * @Author: Lee
 * @Date: 2022-11-04 10:08:50
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-04 10:11:49
 * @Description: 
 */

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "当前时间 → ${DateTime.now()}";
  });
}

void main(List<String> args) {
  Stream.fromFuture(getData()).listen((event) {
    print("Stream.fromFuture: $event");
  }).onDone(() {
    print("Stream.fromFuture done.");
  });
}
