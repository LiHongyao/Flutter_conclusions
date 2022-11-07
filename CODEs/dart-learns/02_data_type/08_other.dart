/*
 * @Author: Lee
 * @Date: 2022-10-28 17:42:02
 * @LastEditors: Lee
 * @LastEditTime: 2022-10-28 17:46:53
 * @Description: 
 */
void main(List<String> args) {
  var str = '😀';
  print(str);
  print(str.length); // UTF-16
  print(str.runes.length); // UTF-32

  // Runes 可以将 UTF-32 字符集表示的内容转换成符号
  Runes input = new Runes("\u{1f680}");
  print(new String.fromCharCodes(input));

  // Symbol
  var a = #abc;
  print(a);

  var b = new Symbol("abc");
  print(b);

  print(#name == new Symbol("name"));

  // dynamic 声明动态类型的变量
  dynamic foo = "bar";
  foo = 123;
  print(foo);
}
