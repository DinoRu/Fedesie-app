import 'package:flutter/material.dart';

import '../models/itemLists.dart';

class DetailPage extends StatefulWidget {
  final Item item;
  const DetailPage({super.key, required this.item});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset("${widget.item.image}", width: double.infinity, height: MediaQuery.of(context).size.height/2,),
              SizedBox(height: 15,),
              Text("${widget.item.title}", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
              SizedBox(height: 15),
              Text("${widget.item.description}", style: TextStyle(color: Colors.black54)),
              Text("${widget.item.createdAt}", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.green), textAlign: TextAlign.start)
            ],
          ),
        ),
      ),
    );
  }
}
