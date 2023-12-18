/*
 * @Author: Lee
 * @Date: 2022-11-04 10:13:35
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-04 10:15:32
 * @Description: 
 */
/*
 * @Author: Lee
 * @Date: 2022-11-04 10:13:35
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-04 10:15:01
 * @Description: 
 */
Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "当前时间 → ${DateTime.now()}";
  });
}

void main(List<String> args) {
  var data = [getData(), getData(), getData()];
  Stream.fromFutures(data).listen((event) {
    print("Stream.fromFutures: $event");
  }).onDone(() {
    print("Stream.fromFutures done.");
  });
}
