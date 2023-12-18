/*
 * @Author: Lee
 * @Date: 2022-11-07 15:07:52
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-07 15:10:54
 * @Description: 
 */
void main(List<String> args) {
  final Iterable<int> s = getRange(1, 6);

  print("Start");

  s.forEach((element) {
    print(element);
  });

  print("End");
}

// 同步递归生成器
Iterable<int> getRange(int start, int end) sync* {
  if (start <= end) {
    yield start;
    // 实现递归调用
    // for (final val in getRange(start + 1, end)) {
    //   yield val;
    // }
    yield* getRange(start + 1, end);
  }
}
