import 'package:excellence_teams_client/services/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../et_testing/mocks.dart';

void main() {
  test('test registering a new user with email and password', () async {
    // arrange
    final firebase = MockFirebaseAuth();
    final service = FirebaseAuthenticationService(firebase);

    const email = 'email';
    const password = 'pwd';

    final credentials = MockFirebaseAuthUserCredential();
    final user = MockFirebaseAuthUser();

    when(() => firebase.createUserWithEmailAndPassword(
        email: email, password: password)).thenAnswer(
      (_) async => credentials,
    );
    when(() => credentials.user).thenReturn(user);

    // act
    final result = await service.registerEmailPassword(
      email: email,
      password: password,
    );

    // assert
    verify(() => firebase.createUserWithEmailAndPassword(
        email: email, password: password)).called(equals(1));
    expect(result, user);
  });

  test('test log in with email and password', () async {
    // arrange
    final firebase = MockFirebaseAuth();
    final service = FirebaseAuthenticationService(firebase);

    const email = 'email';
    const password = 'pwd';

    final credentials = MockFirebaseAuthUserCredential();
    final user = MockFirebaseAuthUser();

    when(() => firebase.signInWithEmailAndPassword(
        email: email, password: password)).thenAnswer(
      (_) async => credentials,
    );
    when(() => credentials.user).thenReturn(user);

    // act
    final result = await service.signInEmailPassword(
      email: email,
      password: password,
    );

    // assert
    verify(() => firebase.signInWithEmailAndPassword(
        email: email, password: password)).called(equals(1));
    expect(result, user);
  });

  test('test refreshing user', () async {
    // arrange
    final firebase = MockFirebaseAuth();
    final service = FirebaseAuthenticationService(firebase);

    final user = MockFirebaseAuthUser();

    when(() => user.reload()).thenAnswer((_) async {});
    when(() => firebase.currentUser).thenReturn(user);

    // act
    final result = await service.refreshUser(user);

    // assert
    verify(() => user.reload()).called(equals(1));
    expect(result, user);
  });
}
