/*
 * @Author: Lee
 * @Date: 2022-11-02 14:49:44
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 14:58:04
 * @Description: 
 */

class Phone {
  /// 这是旧版本中的开机方法，会在将来的版本中移除
  @deprecated
  actived() {
    turnOn();
  }

  turnOn() {
    print('开机');
  }
}

void main(List<String> args) {
  var p = new Phone();
  // p.actived();

  p.turnOn();
}
