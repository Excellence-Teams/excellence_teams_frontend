import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthenticationService {
  Future<User?> registerEmailPassword({
    required String email,
    required String password,
  }) async {
    final auth = FirebaseAuth.instance;
    final credential = await auth.createUserWithEmailAndPassword(
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
    final auth = FirebaseAuth.instance;
    final credential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credential.user;
  }

  Future<User?> refreshUser(User user) async {
    final auth = FirebaseAuth.instance;
    await user.reload();
    return auth.currentUser;
  }
}
