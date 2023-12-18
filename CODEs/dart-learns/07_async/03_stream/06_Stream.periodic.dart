/*
 * @Author: Lee
 * @Date: 2022-11-04 10:18:01
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-04 10:21:06
 * @Description: 
 */
void main(List<String> args) {
  Duration interval = Duration(seconds: 1);

  // 如果不设置第2个参数，则默认返回null
  // Stream<int> stream = Stream<int>.periodic(interval);
  // stream.listen((event) {
  //   print("Stream.periodic: $event");
  // }).onDone(() {
  //   print("Stream.periodic done.");
  // });

  // 带有第2个参数，则返回具体的数据
  Stream<int> streamData = Stream<int>.periodic(interval, (data) => data);
  streamData.listen((event) {
    print("Stream.periodic: $event");
  }).onDone(() {
    print("Stream.periodic done.");
  });
}
