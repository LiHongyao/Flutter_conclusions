/*
 * @Author: Lee
 * @Date: 2022-11-03 21:56:19
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 22:19:20
 * @Description: 
 */
void main(List<String> args) {
  print("start");

  Future(() => print("Future() task")); // event queue
  Future.sync(() => print("Future.sync() task"));

  // 如果 value 后面的值是异步，则按照异步的逻辑进行处理
  Future.value(Future(() => print("Future.value future task")));

  // 如果 value 后面的值，是常量，那么，Future.value 创建的微任务
  Future.value('Future.value() const task').then((value) => print(value));

  Future.microtask(() => print("Future.microtask() task")); // microtask queue

  print("end");
}
