/*
 * @Author: Lee
 * @Date: 2022-11-03 17:55:35
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 17:59:43
 * @Description: 
 */
void main(List<String> args) {
  Future.delayed(
    Duration(seconds: 2),
    () {
      return "Hello";
    },
  ).then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  }).whenComplete(() {
    print("All Completed.");
  });
}
