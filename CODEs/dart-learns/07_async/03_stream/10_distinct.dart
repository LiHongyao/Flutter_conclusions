/*
 * @Author: Lee
 * @Date: 2022-11-04 10:26:58
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-07 11:36:44
 * @Description: 
 */
void main(List<String> args) {
  var data = [1, 2, 'a', 'a', true, true, false, true, 'a'];
  Stream.fromIterable(data)
      .distinct() // 去掉与【前一个】相同的数据（连续重复的值）
      .listen((event) => print("Stream.fromIterable → $event."))
      .onDone(() => print("Stream.fromIterable → done."));
}
