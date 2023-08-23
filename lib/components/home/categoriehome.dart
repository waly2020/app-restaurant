import 'package:flutter/material.dart';
import 'package:restaurant/data/db.dart';

class CategorieHome extends StatelessWidget {
  const CategorieHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 130,
      // color: randomColor(),
      margin: const EdgeInsets.only(top: 20),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context,index) => Column(
          children: [
            Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.only(bottom: 10,top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                border: Border.all(color: Colors.white,width: 3.0,style: BorderStyle.solid)
                // color: randomColor()
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(categories[index]['image'] as String,height: 60,fit: BoxFit.cover,),
              ),
            ),
            Text(categories[index]['title'] as String,style: const TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        )),
        separatorBuilder: ((context,index) => const SizedBox(width: 20,)),
        itemCount: categories.length,
        ),
    );
  }
}