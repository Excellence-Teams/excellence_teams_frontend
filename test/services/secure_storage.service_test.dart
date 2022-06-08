import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:excellence_teams_frontend/services/secure_storage.service.dart';

import '../et_testing/mocks.dart';

void main() {
  test(
      'test storing key value pair and deleting with mocked FlutterSecureStorage',
      () async {
    // arrange
    final storage = MockFlutterSecureStorage();
    final service = SecureStorageService(storage);

    const key = "key";
    const value = "value";

    when(() => storage.write(key: key, value: value)).thenAnswer((_) async {});
    when(() => storage.read(key: key)).thenAnswer((_) async => value);
    when(() => storage.delete(key: key)).thenAnswer((_) async {});

    // act
    await service.store(key: key, value: value, serializer: (String v) => v);
    final loadedValue = await service.load(key: key, parser: (_) => _);
    await service.delete(key);

    // assert
    verify(() => storage.write(key: key, value: value)).called(equals(1));
    verify(() => storage.read(key: key)).called(equals(1));
    expect(loadedValue, value);
    verify(() => storage.delete(key: key)).called(equals(1));
  });
}
