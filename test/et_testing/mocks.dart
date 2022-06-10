import 'package:firebase_auth/firebase_auth.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockFirebaseAuthUser extends Mock implements User {}

class MockFirebaseAuthUserCredential extends Mock implements UserCredential {}
