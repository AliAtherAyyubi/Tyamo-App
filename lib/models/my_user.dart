import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  String? uid;
  String? email;
  String? password;
  String? username;
  String? displayName;
  String? friendUid;
  String? avatarUrl;
  String? phone;
  String? gender;
  String? address;
  String? chatRoomId;
  Timestamp? accountCreated;

  // Constructor //

  MyUser(
      {this.uid,
      this.email,
      this.password,
      this.username,
      this.displayName,
      this.friendUid,
      this.avatarUrl,
      this.phone,
      this.gender,
      this.address,
      this.chatRoomId,
      this.accountCreated});
}
