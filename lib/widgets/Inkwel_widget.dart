import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'big_text.dart';

Widget ParameterWidget( Icon icon, String title) {
  return InkWell(
    focusColor: Colors.transparent,
    onTap: () {},
    child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: ListTile(
          leading: CircleAvatar(child: icon),
          title: BigText(color: Colors.black, text: title),
        )
    ),
  );
}
