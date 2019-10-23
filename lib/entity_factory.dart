import 'package:flutter_app/bean/compe_entity.dart';
class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "CompeEntity") {
      return CompeEntity.fromJson(json) as T;
    }  else {
      return null;
    }
  }
}