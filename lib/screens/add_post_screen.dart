import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peeps/constants/colors.dart';
import 'package:peeps/constants/consts.dart';
import 'package:peeps/models/user.dart';
import 'package:peeps/providers/user_provider.dart';
import 'package:peeps/utils/utils.dart';
import 'package:provider/provider.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  Uint8List? _file;
  final TextEditingController _descriptionController = TextEditingController();

  postImage(
    String uid,
    String username,
    String profImage,
  ) async {
    try {
      
    } catch (e) {
      
    }
  }

  _selectImage(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          backgroundColor: mainColor,
          surfaceTintColor: bgColor,
          title: const Text(
            createPost,
          ),
          children: [
            //* take photo from camera
            SimpleDialogOption(
              padding: const EdgeInsets.all(
                20,
              ),
              onPressed: () async {
                Navigator.of(context).pop();
                Uint8List file = await picImage(
                  ImageSource.camera,
                );
                setState(
                  () {
                    _file = file;
                  },
                );
              },
              child: const Text(
                takePhoto,
              ),
            ),

            //* upload photo from gallery
            SimpleDialogOption(
              padding: const EdgeInsets.all(
                20,
              ),
              onPressed: () async {
                Navigator.of(context).pop();
                Uint8List file = await picImage(
                  ImageSource.gallery,
                );
                setState(
                  () {
                    _file = file;
                  },
                );
              },
              child: const Text(
                choosePhoto,
              ),
            ),

            //* cancel
            SimpleDialogOption(
              padding: const EdgeInsets.all(
                20,
              ),
              onPressed: () async {
                Navigator.of(context).pop();
              },
              child: const Center(
                child: Text(
                  cancel,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<UserProvider>(context).getUser;

    return _file == null
        ? Center(
            child: IconButton(
              onPressed: () => _selectImage(context),
              icon: const Icon(
                Icons.upload,
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: secColor,
              elevation: 0,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              title: const Text(postTo),
              actions: [
                TextButton(
                  onPressed: postImage,
                  child: const Text(
                    'Post',
                    style: TextStyle(
                      fontFamily: bold,
                      color: whiteColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(user.photoUrl),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: TextField(
                        controller: _descriptionController,
                        decoration: const InputDecoration(
                          hintText: 'Write a caption',
                          border: InputBorder.none,
                        ),
                        maxLines: 8,
                      ),
                    ),
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: AspectRatio(
                        aspectRatio: 487 / 451,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: MemoryImage(_file!),
                              fit: BoxFit.fill,
                              alignment: FractionalOffset.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Divider(),
                  ],
                )
              ],
            ),
          );
  }
}
