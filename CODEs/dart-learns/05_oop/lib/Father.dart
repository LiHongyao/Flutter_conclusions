/*
 * @Author: Lee
 * @Date: 2022-11-02 15:00:31
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 15:07:08
 * @Description: 
 */
class Father {
  String name = "刘备";
  num _momney = 10000;
  String job;

  Father(this.job);

  // 命名构造函数
  Father.origin(this.job);

  get getMoney {
    return this._momney;
  }

  say() {
    print("我是 $name");
  }
}
