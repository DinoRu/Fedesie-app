import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget contact() {
  return Card(
    child: ListTile(
      leading: Icon(Icons.person_2_rounded),
      title: Text("Contact name"),
      subtitle: Text("+7 900 000 20 20"),
    )
  );
}