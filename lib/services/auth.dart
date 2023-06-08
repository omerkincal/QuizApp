// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:ypyprojeodevi/models/user.dart';

// class AuthService {
//   FirebaseAuth _auth = FirebaseAuth.instance;

//   Student? _userFromFirebaseUser(User? user) {
//     return user != null ? Student(uid: user.uid) : null;
//   }

//   Future signInEmailAndPassword(String email, String password) async {
//     try {
//       UserCredential authResult = await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       User? firebaseUser = authResult.user;
//       return _userFromFirebaseUser(firebaseUser);
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   Future signUpwithEmailAndPassword(String email, String password) async {
//     try {
//       UserCredential authResult = await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       User? firebaseUser = authResult.user;
//       return _userFromFirebaseUser(firebaseUser);
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   Future signOut() async {
//     try {
//       return await _auth.signOut();
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
// }
