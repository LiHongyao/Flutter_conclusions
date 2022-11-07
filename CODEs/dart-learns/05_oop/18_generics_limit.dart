/*
 * @Author: Lee
 * @Date: 2022-11-02 17:22:55
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 17:26:35
 * @Description: 
 */

class SomeBaseClass {
  // ...
}

class AnotherClass {
  // ...
}

// 子类
class Extender extends SomeBaseClass {}

class Foo<T extends SomeBaseClass> {
  String toString() => "Instance of 'Foo<$T>'";
}

void main(List<String> args) {
  var someBaseClassFoo = Foo<SomeBaseClass>();
  print(someBaseClassFoo);

  var extenderFoo = Foo<Extender>();
  print(extenderFoo);

  var foo = Foo();
  print(foo);

  // var f = Foo<AnotherClass>(); // 类型不对，报错
  // print(f);
}
