/*
 * @Author: Lee
 * @Date: 2022-11-03 10:43:29
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 10:57:50
 * @Description: 
 */

// import 'dart:core'; // 自动引入

void main(List<String> args) {
  // 创建当前时间
  var now = new DateTime.now();
  print(now);

  // 通过普通构造函数创建时间
  var d = new DateTime(2022, 10, 30, 9, 30);
  print(d);

  // 创建标准时间
  var d1 = DateTime.parse("2022-11-11 12:00:00");
  print(d1);
  var d2 = DateTime.parse("2022-11-11 12:00:00+0800");
  print(d2);

  // 时间增量，当前时间上+/-
  print(now.add(new Duration(hours: 2)));
  print(now.add(new Duration(hours: -3)));

  // 时间比较
  print(d1.isAfter(d2)); // d1 是否在 d2 之后
  print(d1.isBefore(d2)); // d1 是否在 d2 之前
  print(d1.isAtSameMomentAs(d2)); // d1 与 d2 是否相同

  // 时间差
  var d3 = new DateTime(2022, 11, 1);
  var d4 = new DateTime(2022, 11, 3);
  var difference = d4.difference(d3);
  print([difference.inDays, difference.inHours]); // d3与d4相差的天数与小时

  // 时间戳
  print(now.millisecondsSinceEpoch); // 单位毫秒，13位时间戳
  print(now.microsecondsSinceEpoch); // 单位微妙，16位时间戳

  // 格式化
  print(now.month.toString().padLeft(2, '0'));
  String timestamp =
      "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
  print(timestamp);
}
