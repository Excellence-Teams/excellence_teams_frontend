import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthenticationService {
  final FirebaseAuth _auth;

  FirebaseAuthenticationService([FirebaseAuth? auth])
      : _auth = auth ?? FirebaseAuth.instance;

  Future<User?> registerEmailPassword({
    required String email,
    required String password,
  }) async {
    final credential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = credential.user;
    if (user == null) {
      return user;
    }
    return user;
  }

  Future<User?> signInEmailPassword({
    required String email,
    required String password,
  }) async {
    final credential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credential.user;
  }

  Future<User?> refreshUser(User user) async {
    await user.reload();
    return _auth.currentUser;
  }
}
