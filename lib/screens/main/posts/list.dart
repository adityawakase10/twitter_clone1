import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone1/models/post.dart';

class ListPost extends StatefulWidget {
  ListPost({Key key}) : super(key: key);

  @override
  _ListsPostState createState() => _ListsPostState();
}

class _ListsPostState extends State<ListPost> {
 @override
  Widget build(BuildContext context) {
     final posts = Provider.of<List<PostModel>>(context) ?? [];
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index){
        final post = posts[index];
        return ListTile(
          title: Text(post.creatot),
          subtitle: Text(post.text),
        );
      },
      );
  }
}