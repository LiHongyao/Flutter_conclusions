/*
 * @Author: Lee
 * @Date: 2022-10-28 10:09:31
 * @LastEditors: Lee
 * @LastEditTime: 2022-10-28 10:18:18
 * @Description: 
 */
void main(List<String> args) {
  // 声明字符串
  // var str1 = 'Hello, World!';
  // print(str1);
  // var str2 = "你好，世界！";
  // print(str2);

  String str1 = 'Hello, World!';
  print(str1);
  String str2 = "你好，世界！";
  print(str2);
  String str3 = '''Hello
    World
    ''';
  print(str3);

  // 常见操作
  // 1. 字符串拼接
  print(str1 + str2);
  print("$str1 $str2");

  // 2. 字符串分割
  print(str1.split(""));

  // 3. 字符串裁切
  print("   abc   ".trim());

  // 4. 判断行字符串是否为空
  print(''.isEmpty);
  print(''.isNotEmpty);

  // 5. 字符串替换
  print(str1.replaceAll("World", "Dart"));
  // 支持正则替换
  print("C1h2i3n4a56".replaceAll(RegExp(r"\d+"), "_"));
  // 6.通过正则匹配手机号
  var isPhone = RegExp(r"^1\d{10}$");
  print(isPhone.hasMatch("17398888669"));
  print(isPhone.hasMatch("1739888866"));

  // 7. 查找字符串
  print(str1.contains('e'));
  print(str1.indexOf('e'));
  print(str1.lastIndexOf('e'));
}
