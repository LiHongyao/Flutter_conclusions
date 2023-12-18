/*
 * @Author: Lee
 * @Date: 2022-11-02 17:08:33
 * @LastEditors: Lee
 * @LastEditTime: 2022-11-02 17:16:03
 * @Description: 
 */

abstract class ObjectCache {
  getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class StringCache {
  getByKey(String key);
  void setByKey(String key, Object value);
}

// 泛型接口
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

// 文件缓存
class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("文件缓存：key = ${key} value = ${value}");
  }
}

// 内存缓存
class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("内存缓存：key = ${key} value = ${value}");
  }
}

void main(List<String> args) {
  // 文件缓存 - 缓存字符串
  // FileCache fc = new FileCache<String>();
  // fc.setByKey("foo", "bar");
  // fc.setByKey("foo", 2); // 报错

  // FileCache fc = new FileCache<Map>();
  // fc.setByKey("index", {"name": "张三丰", "age": 218});

  // 内存缓存 - 缓存字符串
  // MemoryCache mc = new MemoryCache<String>();
  // mc.setByKey("foo", "bar");

  // 内存缓存 - 缓存集合
  MemoryCache mc = new MemoryCache<Set>();
  mc.setByKey("home", {1, 2, 3});
}
