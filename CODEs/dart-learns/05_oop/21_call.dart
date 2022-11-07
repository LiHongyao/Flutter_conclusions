class IOSPhone {
  IOSPhone() {
    print("Constructor");
  }

  call(String num) {
    print("Phone num is $num.");
  }
}

void main(List<String> args) {
  var phone = IOSPhone(); // 实例化对象时，会自动调用构造函数
  phone("911"); // 将类对象，用作函数名 - 调用 call 方法

  IOSPhone()("911"); // 简写
}
