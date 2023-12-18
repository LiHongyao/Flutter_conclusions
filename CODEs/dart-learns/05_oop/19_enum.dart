/*
 * @Author: Lee
 * @Date: 2022-11-02 17:58:16
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-03 09:54:27
 * @Description: 
 */
enum Color { red, green, blue }

void main(List<String> args) {
  // 通过 index 返回没居中具体常量的值
  print(Color.green.index);

  // 通过 values 返回常量列表
  print(Color.values);
  List<Color> colors = Color.values;
  print(colors);

  // 通过下标，访问列表中的内容
  print(colors[0]);

  // 通过forEach遍历列表的内容
  colors.forEach((element) {
    print("value: $element, index: ${element.index}");
  });
}
