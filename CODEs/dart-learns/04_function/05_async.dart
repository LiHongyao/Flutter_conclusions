/*
 * @Author: Lee
 * @Date: 2022-11-01 14:45:49
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-01 14:49:13
 * @Description: 
 */
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> getIPAddress() async {
  final uri = Uri.parse('https://httpbin.org/ip');
  final response = await http.get(uri);
  return jsonDecode(response.body)['origin'];
}

void main(List<String> args) async {
  // 调用 getIPAddress
  try {
    final ip = await getIPAddress();
    print("IP：$ip");
  } catch (error) {
    print(error);
  }
}
