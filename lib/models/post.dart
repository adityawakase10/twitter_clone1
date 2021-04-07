import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel{
  final String id;
  final String creatot;
  final String text;
  final Timestamp timestamp;

  PostModel({this.id,this.creatot,this.text,this.timestamp});
}