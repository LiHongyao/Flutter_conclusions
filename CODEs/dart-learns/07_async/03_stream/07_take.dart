/*
 * @Author: Lee
 * @Date: 2022-11-04 10:26:34
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-07 10:43:53
 * @Description: 
 */

void main(List<String> args) {
  Duration interval = Duration(seconds: 1);

  Stream<int> streamData = Stream<int>.periodic(interval, (data) => data);

  // 指定接收次数
  streamData.take(5).listen((event) {
    print("Stream.periodic → $event.");
  }).onDone(() {
    print("Stream.periodic → done.");
  });
}
