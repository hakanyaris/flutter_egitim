// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_application_1/202/3-service/comment_model.dart';
import 'package:flutter_application_1/202/3-service/post_service.dart';

class CommentLearnView extends StatefulWidget {
  const CommentLearnView({
    Key? key,
    this.postId,
  }) : super(key: key);

  final int? postId;

  @override
  State<CommentLearnView> createState() => _CommentLearnViewState();
}

class _CommentLearnViewState extends State<CommentLearnView> {
  late final IPostService postService;
  bool _isLoading = false;
  List<CommentModel>? _commentItems;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postService = PostService();
    fethItemWithId(widget.postId ?? 0);
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fethItemWithId(int postId) async {
    _changeLoading();
    _commentItems = await postService.fetchRelatedCommentsWithPostId(postId);
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: _commentItems?.length ?? 0,
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: Text(_commentItems?[index].email ?? ''),
            );
          },
        ));
  }
}
//1.37.26