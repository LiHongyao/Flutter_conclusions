void main(List<String> args) {
  Duration interval = Duration(seconds: 1);

  Stream<int> streamData = Stream<int>.periodic(interval, (data) => data);

  // 指定接收次数
  streamData.takeWhile((element) {
    return element <= 6;
  }).skipWhile((element) {
    print("skipWhile：$element");
    return element <= 3;
  }).listen((event) {
    print("--：$event.");
  }).onDone(() {
    print("done.");
  });
}
