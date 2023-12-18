void main(List<String> args) {
  Duration interval = Duration(seconds: 1);

  Stream<int> streamData = Stream<int>.periodic(interval, (data) => data);

  // 指定接收次数
  streamData
      .takeWhile((element) {
        return element <= 6;
      })
      .skip(2)
      .listen((event) {
        print("--：$event.");
      })
      .onDone(() {
        print("done.");
      });
}
