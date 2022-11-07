void main(List<String> args) {
  var data = [1, 2, "Hello", true, null];
  Stream.fromIterable(data).listen((event) {
    print("Stream.fromIterable: $event");
  }).onDone(() {
    print("Stream.fromIterable done.");
  });
}
