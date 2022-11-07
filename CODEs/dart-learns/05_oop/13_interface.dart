/*
 * @Author: Lee
 * @Date: 2022-11-02 16:27:36
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 16:33:36
 * @Description: 
 */

// 手机的处理器
abstract class Processor {
  String cores; // 内核：2核，4核
  arch(String name); // 芯片制程：7nm，5nm
}

// 手机的摄像头
abstract class Camera {
  String resolution; // 分辨率：1000万，3000万
  brand(String name); // 品牌：三星，莱卡，蔡司
}

// 通过普通类实现接口
class Phone implements Processor, Camera {
  @override
  String cores;

  @override
  String resolution;

  Phone(this.cores, this.resolution);

  @override
  arch(String name) {
    print("芯片制程：$name");
  }

  @override
  brand(String name) {
    print("相机品牌：$name");
  }
}

void main(List<String> args) {
  Phone p = new Phone("4核", "3000万");
  p.arch("5nm");
  p.brand("莱卡");
}
