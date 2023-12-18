/*
 * @Author: Lee
 * @Date: 2022-10-28 17:13:26
 * @LastEditors: Lee
 * @LastEditTime: 2022-10-28 17:21:40
 * @Description: 
 */
void main(List<String> args) {
  var nums = [1, 2, 3];

  // for 循环进行遍历
  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  }

  // for ... in
  for (var item in nums) {
    print(item);
  }

  // forEach
  nums.forEach((element) {
    print(element);
  });

  // var newNums = [];
  // for (var i = 0; i < nums.length; i++) {
  //   newNums.add(nums[i] * nums[i]);
  // }
  // print(newNums);

  var newNums = nums.map((e) {
    return e * e;
  });
  print(newNums.toList());

  // where() 返回复合条件的元素
  // 判断数字是否是奇数
  bool isOdd(n) => n % 2 == 1;
  var oddNums = nums.where((element) => isOdd(element));
  print(oddNums.toList());

  // 使用 any() 检测是否有奇数（至少一个）
  print(nums.any(isOdd));

  // 使用 every() 来判断是否都是奇数
  print(nums.every(isOdd));

  // 扩展
  var pairs = [
    [1, 2],
    [3, 4]
  ];
  var flattened = pairs.expand((element) => element).toList();
  print(flattened); // [1, 2, 3, 4]

  // 折叠 - 对列表中的每一个元素，做一个累计操作，类似于JSreduce
  int result =
      nums.fold(2, (previousValue, element) => previousValue * element);
  print(result);
}
