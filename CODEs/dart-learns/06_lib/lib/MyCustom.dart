/*
 * @Author: Lee
 * @Date: 2022-11-03 09:59:28
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 10:02:34
 * @Description: 
 */

// library MyCustom;
library my_custom; // 建议写成消息字母+下划线的形式

class MyCustom {
  String name = "MyCustom";
  static double version = 1.0;

  void info() {
    print("我是自定义库");
  }
}
