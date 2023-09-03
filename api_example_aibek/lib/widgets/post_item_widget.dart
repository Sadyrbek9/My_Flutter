import 'package:flutter/material.dart';

class PostItemWidget extends StatelessWidget {
  const PostItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
title: Text('Title'),
leading: Icon(Icons.navigate_next),
    );
  }
}