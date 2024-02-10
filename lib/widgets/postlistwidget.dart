import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/postsList.dart';

Widget postCard(BuildContext context, Post post) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)
              ),
              Text(post.description.substring(0, 50))
            ],
          )
        ],
      ),
    ),
  );
}