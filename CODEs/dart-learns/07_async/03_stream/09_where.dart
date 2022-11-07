/*
 * @Author: Lee
 * @Date: 2022-11-04 10:26:50
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-07 10:47:39
 * @Description: 
 */

void main(List<String> args) {
  Duration interval = Duration(seconds: 1);

  Stream<int> streamData = Stream<int>.periodic(interval, (data) => data);

  streamData.takeWhile((element) {
    // print("Stream.periodic.takeWhile → $element.");
    return element <= 3;
  }).where((data) {
    // print("where → $data.");
    return data % 2 == 0; // 返回偶数
  }).listen((event) {
    print("Stream.periodic → $event.");
  }).onDone(() {
    print("Stream.periodic → done.");
  });
}
