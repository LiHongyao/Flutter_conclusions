/*
 * @Author: Lee
 * @Date: 2022-11-04 09:30:35
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-04 09:37:07
 * @Description: 
 */
void main(List<String> args) {
  var i = 0;
  Future.doWhile(() {
    i++;
    return Future.delayed(Duration(seconds: 2), () {
      var now = DateTime.now().microsecondsSinceEpoch.toString();
      print("Future.doWhile() $i, 当前时间：$now");
      return i < 4;
    }).then((value) {
      print(value);
      return value;
    });
  }).then((value) {
    print("Future.doWhile() then：$value");
  });
}
