import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tyamo_app/models/my_user.dart';
// import 'package:tyamo_app/models/my_user.dart';

class userDatabase {
  // MyUser user = MyUser();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> CreateUserById(MyUser user) async {
    firestore.collection('users').doc(user.uid).set({
      'id': user.uid,
      'email': user.email,
      'password': user.password,
      'username': user.username,
      'displayName': user.displayName,
      'friendUid': user.friendUid,
      'avatarUrl': user.avatarUrl,
      'phone': user.phone,
      'gender': user.gender,
      'address': user.address,
      'chatRoomId': user.chatRoomId,
      'accountCreated': user.accountCreated,
    });
  }

  Future<MyUser> getUserById(String uid) async {
    DocumentSnapshot doc = await firestore.collection('users').doc(uid).get();
    return MyUser(
      uid: doc['id'],
      email: doc['email'],
      password: doc['password'],
      username: doc['username'],
      displayName: doc['displayName'],
      friendUid: doc['friendUid'],
      avatarUrl: doc['avatarUrl'],
      phone: doc['phone'],
      gender: doc['gender'],
      address: doc['address'],
      chatRoomId: doc['chatRoomId'],
      accountCreated: doc['accountCreated'],
    );
  }
}
