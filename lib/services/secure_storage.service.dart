import 'package:excellence_teams_frontend/util/log.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage;

  SecureStorageService([FlutterSecureStorage? storage])
      : _storage = storage ?? const FlutterSecureStorage();

  Future<T?> load<T>({
    required String key,
    required T Function(String value) parser,
  }) async {
    try {
      final value = await _storage.read(key: key);
      if (value != null) {
        return parser(value);
      }
    } catch (e, s) {
      debugLogError('error loading value for key $key', e, s);
    }
    return null;
  }

  Future<void> store<T>({
    required String key,
    required T value,
    required String Function(T value) serializer,
  }) async {
    try {
      await _storage.write(key: key, value: serializer(value));
    } catch (e, s) {
      debugLogError('error storing value for key $key', e, s);
    }
  }

  Future<void> delete(String key) async {
    try {
      return _storage.delete(key: key);
    } catch (e, s) {
      debugLogError('error deleting key $key', e, s);
    }
  }
}
