/*
 * @Author: Lee
 * @Date: 2022-11-07 14:52:57
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-07 14:54:29
 * @Description: 
 */
void main(List<String> args) {
  final Stream<int> s = asyncCountDown(5);

  print("Start");
  s.listen((event) {
    print(event);
  }).onDone(() {
    print("Done");
  });
  print("End");
}

// 异步生成器
Stream<int> asyncCountDown(int n) async* {
  while (n > 0) {
    yield n--;
  }
}
