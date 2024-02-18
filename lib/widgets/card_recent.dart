import 'package:fedesie_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

class RCard extends StatelessWidget {

  final String thumbnail;
  final String title;
  final String time;
  const RCard({
    super.key,
    required this.title,
    required this.thumbnail,
    required this.time
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Card(
        elevation: 0,
        color: Colors.grey[200],
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(thumbnail, width: 40, height: 40, fit: BoxFit.cover,)
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(color: Colors.black, text: title, size: 16,),
                  Row(
                    children: [
                      Icon(Icons.timelapse, size: 20, color: Colors.orange),
                      SizedBox(width: 10),
                      Text(time, style: TextStyle(fontStyle: FontStyle.italic, color: Colors.orange)),
                    ],
                  )
                ],
              )
            ],
          ),
        
        ),
      ),
    );
  }
}
