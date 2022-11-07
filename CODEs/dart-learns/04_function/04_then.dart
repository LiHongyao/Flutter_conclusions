/*
 * @Author: Lee
 * @Date: 2022-11-01 14:28:54
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-01 14:44:29
 * @Description: 
 */

// → https://pub.flutter-io.cn/packages/http
// → 根目录创建 pubspec.yaml
// → 添加依赖
// → 安装依赖
import 'package:http/http.dart' as http;
import 'dart:convert';

Future getIPAddress() {
  final uri = Uri.parse('https://httpbin.org/ip');
  return http.get(uri).then((response) {
    // print(response.body);
    String ip = jsonDecode(response.body)['origin'];
    return ip;
  });
}

void main(List<String> args) {
  // 调用 getIPAddress
  getIPAddress()
      .then((ip) => print("IP：$ip"))
      .catchError((error) => print(error));
}
