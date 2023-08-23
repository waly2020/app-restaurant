import 'package:flutter/material.dart';
import 'package:restaurant/utils/utils.dart';

import '../../data/db.dart';

class ContentHome extends StatelessWidget {
  ContentHome({super.key});

  final List<Plats> plats = Plats.plats();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: 100,
      padding: EdgeInsets.symmetric(horizontal: paddingApp,vertical: 40),
      margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius:  BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textSection("23 Restaurantes Disponibles"),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Color(mainColor),
                  borderRadius: BorderRadius.circular(40)
                ),
                
                child: const Icon(Icons.settings,color: Colors.white,),
              ),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Color(mainColor),
                  borderRadius: BorderRadius.circular(40)
                ),
                
                child: const Icon(Icons.filter_alt_outlined,color: Colors.white,),
              ),
            ],
          ),
          const SizedBox(height: 40,),
          // plats
          Column(
            children: plats.map((plat) => Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(plat.image),
                ),
                Transform.translate(
                  offset: const Offset(0.0,-30.0),
                  child: Container(
                    // height: 200,
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [BoxShadow(color: Color(0x635F5F5F),spreadRadius: 1.7,blurRadius: 1.7)],
                    ),
                    child: Column(
                      children: [
                        // titre et like
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(plat.title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                const SizedBox(height: 5,),
                                Text("${plat.prix} F",style: const TextStyle(color: Color(0xFF5B5A5A),fontWeight: FontWeight.bold),)
                              ],
                            ),
                             Icon(Icons.add,size: 30,color: Color(mainColor),),
                          ],
                        ),
                        Container(
                              height: 1.8,
                              color: const Color(0xFFE5E1E1),
                              margin: const EdgeInsets.symmetric(vertical: 20),
                        ),
                        // fin titre et like
                        // footer plat
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // sec resto
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Restaurant",style: TextStyle(color: Color(0xFF9B9898),fontSize: 14)),
                                const SizedBox(height: 10,),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.red[50],
                                  ),
                                  child: Text(plat.restaurant,style: const TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 12),),
                                )
                              ],
                            ),
                            // fin sec resto
                            // sec temps
                            const Column(
                              children: [
                                Text("Temps de preparation",style: TextStyle(color: Color(0xFF9B9898),fontSize: 14)),
                                SizedBox(height: 10,),
                                Text("30 - 40 min",style: TextStyle(fontSize: 18),),
                              ],
                            ),
                            // fin sec temps
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Note",style: TextStyle(color: Color(0xFF9B9898),fontSize: 14)),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text("${plat.note}"),
                                    const Icon(Icons.star,size: 15,),
                                    Text("(${plat.nbcomande}+)")
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                        // end footer plat
                      ],
                    ),
                  ),
                ),
              ],
            )).toList(),
          )
          // fin plats
        ],
      ),
    );
  }
}