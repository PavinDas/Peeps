import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:peeps/models/post.dart';
import 'package:peeps/resources/storage_methods.dart';

class FireStoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //* Upload post
  Future<String> uploadPost(
    String uid,
    String description,
    String username,
    String profImage,
    Uint8List file,
  ) async {
    String res = "some error occurred";
    try {
      String photoUrl = await StorageMethods().uploadImageToStorage(
        'posts',
        file,
        true,
      );


      Post post = Post(
        description: description,
        uid: uid,
        postId: postId,
        username: username,
        datePublished: DateTime.now(),
        postUrl: photoUrl,
        profImage: profImage,
        likes: likes,
      );
    } catch (e) {}
  }
}
