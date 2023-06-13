import 'dart:developer' as ui;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' show debugPrint;

class Auth {
  ///
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  /// [Email ve Şifre İle Giriş Yap]
  Future<void> signInEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      ui.log("[signInWithEmailAndPassword]: ${_firebaseAuth.currentUser}");
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  /// [Email ve Şifre İle Kaydol]
  Future<void> signUpwithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      ui.log("[signUpwithEmailAndPassword]: ${_firebaseAuth.currentUser}");
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  /// [Çıkış Yap]
  Future<void> signOut() async {
    try {
      ui.log("[signOut]: ${_firebaseAuth.currentUser}");
      return await _firebaseAuth.signOut();
    } catch (e) {
      ui.log("[signOut-error]: $e");
    }
  }

  // Future controlUp() async{
  //   try {
  //     return await _auth.che
  //   }catch(e){

  //   }

  // }
}
