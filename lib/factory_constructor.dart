// ignore: slash_for_doc_comments
/**
 * @Description:
 * @Author:         xiegang
 * @CreateDate:     2019/6/5 9:48
 * @UpdateUser:     更新者:工厂模式 可返回参数的构造方法
 * @UpdateRemark:   更新说明：
 * @Version:        1.0
 */

class Logger {
  final String name;
  static final Map<String, Logger> _cache = <String, Logger>{};




  
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._interal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._interal(String name) : name = name;
}
