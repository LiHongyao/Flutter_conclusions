/*
 * @Author: Lee
 * @Date: 2022-11-07 14:48:27
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-07 14:51:17
 * @Description: 
 */
void main(List<String> args) {
  var res = getNumber(5).iterator;
  while (res.moveNext()) {
    print(res.current);
  }
  // res.moveNext(); print(res.current);
  // res.moveNext(); print(res.current);
  // res.moveNext(); print(res.current);
  // res.moveNext(); print(res.current);
  // res.moveNext(); print(res.current);
  // res.moveNext(); print(res.current);
}

// 同步生成器
Iterable<int> getNumber(int n) sync* {
  int i = 0;
  while (i < n) {
    yield i++;
  }
  print("end");
}
