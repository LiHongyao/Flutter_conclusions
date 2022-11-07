/*
 * @Author: Lee
 * @Date: 2022-11-04 10:26:43
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-07 10:44:17
 * @Description: 
 */
void main(List<String> args) {
  Duration interval = Duration(seconds: 1);

  Stream<int> streamData = Stream<int>.periodic(interval, (data) => data);

  // 指定接收次数
  streamData.takeWhile((element) {
    print("Stream.periodic.takeWhile → $element.");
    return element <= 3;
  }).listen((event) {
    print("Stream.periodic → $event.");
  }).onDone(() {
    print("Stream.periodic → done.");
  });
}
