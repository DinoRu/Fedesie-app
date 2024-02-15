import 'package:fedesie_app/widgets/big_text.dart';
import 'package:flutter/material.dart';


class ItemCard extends StatelessWidget {

  final String title;
  final String date;
  final String location;
  final String thumbnail;
  ItemCard({
    super.key,
    required this.title,
    required this.date,
    required this.location,
    required this.thumbnail,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
              child: Image.asset(thumbnail, height: 150, width: 200, fit: BoxFit.cover, )
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(color: Colors.black, text: title, size: 16,),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$date",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black45,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.place, size: 10,),
                          Text(
                            "$location",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
