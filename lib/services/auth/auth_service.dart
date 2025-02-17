import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // get instance
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // current user
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  // sign in
  Future<UserCredential> signInWithEmailPassword(
      String email, String password) async {
    // try to sign in
    try {
      //sign user in
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential;

      // catch error
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  // sign up
  Future<UserCredential> signUpWithEmailPassword(
      String email, String password) async {
    // try to sign up
    try {
      //sign user up
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential;

      // catch error
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  // sign out
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
