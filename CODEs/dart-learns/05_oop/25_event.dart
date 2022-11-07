/*
 * @Author: Lee
 * @Date: 2022-11-03 14:30:16
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 14:37:59
 * @Description: 
 */
import 'dart:async';

void main(List<String> args) {
  print("flow start"); // 执行打印开始

  // 执行判断为事件任务，添加到事件任务队列
  Timer.run(() {
    print("event-A"); // 执行事件任务，打印事件任务标记

    // 执行判断为微任务，添加到微任务队列
    scheduleMicrotask(() {
      print("microtask-B in event-A"); // 执行微任务，打印微任务标记
    });

    // 执行判断为微任务，添加到微任务队列
    scheduleMicrotask(() {
      print("microtask-C in event-A"); // 执行微任务，打印微任务标记
    });
  });

  // 执行判断为微任务，添加到微任务队列
  scheduleMicrotask(() {
    print("microtask-A"); // 执行微任务，打印微任务标记

    // 执行判断为事件任务，添加到事件任务队列
    Timer.run(() {
      print("event-B in microtask-A"); // 执行事件任务，打印事件任务标记
    });
  });

  print('flow end'); // 打印结束标记
}
