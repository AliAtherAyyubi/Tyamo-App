import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tyamo_app/Service/user_db.dart';
import 'package:tyamo_app/models/my_user.dart';
// import 'package:firebase_core/firebase_core.dart';

class UserController {
  // user model object ..
  MyUser user = MyUser();
  MyUser currentUser = MyUser();

  /// Creating Objects of firestore and auth //
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Function to register user //

  Future<User?> RegisterUser(String email, String password) async {
    try {
      UserCredential authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (authResult != null) {
        user.uid = authResult.user!.uid;
        user.email = email;
        // user.password = password;
        // user.accountCreated = Timestamp.now();

        userDatabase().CreateUserById(user);
      }

      print('Registered Successfully');
      return authResult.user;
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  Future<void> SignIn(String email, String password) async {
    try {
      UserCredential loginResult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      currentUser = await userDatabase().getUserById(loginResult.user!.uid);
      print(currentUser.password);
      // return credential.user;
    } catch (e) {
      print(e.toString());
    }
  }
}
