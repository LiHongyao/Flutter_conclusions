/*
 * @Author: Lee
 * @Date: 2022-11-04 10:27:16
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-07 11:44:06
 * @Description: 
 */
void main(List<String> args) {
  Duration interval = Duration(seconds: 1);

  Stream<int> streamData = Stream<int>.periodic(interval, (data) => data + 1);

  streamData.takeWhile((element) {
    return element <= 6;
  }).map((event) {
    print("map：$event * 100 = ${event * 100}");
    return event * 100;
  }).listen((event) {
    print("listen：$event.");
  }).onDone(() {
    print("done.");
  });
}
