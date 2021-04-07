import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:twitter_clone1/models/post.dart';

class PostService{
  List<PostModel> _postListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.docs.map((doc){
      return PostModel(
        id: doc.id,
        text: doc.data()['text'] ?? '',
        creatot: doc.data()['creatot'] ?? '',
        timestamp: doc.data()['timestamp'] ?? 0,
       );
    } ).toList();
  }
  Future savePost(text) async{
    await FirebaseFirestore.instance.collection("posts").add({
      'text': text,
      'creatot': FirebaseAuth.instance.currentUser.uid,
      'timestamp': FieldValue.serverTimestamp()
    });
  }
  Stream<List<PostModel>> getPostsByUser(uid){
    return FirebaseFirestore.instance
    .collection("posts")
    .where('creatot', isEqualTo: uid)
    .snapshots()
    .map(_postListFromSnapshot);
  }
}