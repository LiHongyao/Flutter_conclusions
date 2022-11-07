/*
 * @Author: Lee
 * @Date: 2022-11-03 13:53:20
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 13:55:09
 * @Description: 
 */
class Person {
  say() {
    print("Say something");
  }

  @override
  noSuchMethod(Invocation invocation) {
    print("【提示】：未定义的方法");
    return super.noSuchMethod(invocation);
  }
}

void main(List<String> args) {
  dynamic p = Person();
  p.say();
  p.running();
}
