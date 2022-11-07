/*
 * @Author: Lee
 * @Date: 2022-11-04 10:27:24
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-07 11:46:34
 * @Description: 
 */
void main(List<String> args) {
  Duration interval = Duration(seconds: 1);

  Stream<int> streamData = Stream<int>.periodic(interval, (data) => data + 1);

  streamData.takeWhile((element) {
    return element <= 3;
  }).expand((element) {
    print("expand → $element → ${element * 10} → ${element * 100}");
    return [element, element * 10, element * 100];
  }).listen((event) {
    print("listen：$event.");
  }).onDone(() {
    print("done.");
  });
}
