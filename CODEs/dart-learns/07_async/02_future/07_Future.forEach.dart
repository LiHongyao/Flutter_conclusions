/*
 * @Author: Lee
 * @Date: 2022-11-04 09:40:39
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-04 09:52:14
 * @Description: 
 */
void main(List<String> args) {
  Future.forEach([1, 2, 3], (element) {
    return Future.delayed(Duration(seconds: 1), () {
      print("当前元素：$element");
      return element * 2;
    }).then((value) => print("处理后的结果：$value"));
  });
}
