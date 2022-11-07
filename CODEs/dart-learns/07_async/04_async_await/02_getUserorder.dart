/*
 * @Author: Lee
 * @Date: 2022-11-07 14:36:15
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-07 14:44:50
 * @Description: 
 */

getUserInfo() {
  print("查询用户ID...");
  return Future.delayed(Duration(seconds: 1), () {
    return 1;
  });
}

// getOrderInfo() {
//   getUserInfo().then((val) {
//     print("用户信息：$val");
//     return Future.delayed(Duration(seconds: 2), () {
//       print("OrderInfo");
//       return 2;
//     });
//   });
// }

getOrderInfo(int id) async {
  print("当前用户：$id");
  print("查询用户订单...");
  return Future.delayed(Duration(seconds: 2), () {
    return {"nums": 1, "title": "iPhone 14 pro max"};
  });
}

void main(List<String> args) async {
  // 获取用户订单信息
  // 1. 获取用户信息
  // 2. 根据用户信息，获取订单信息
  var id = await getUserInfo();
  var order = await getOrderInfo(id);
  print(order);
}
