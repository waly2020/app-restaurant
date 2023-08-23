import 'package:flutter/material.dart';
import 'package:restaurant/components/home/categoriehome.dart';
import 'package:restaurant/utils/utils.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20,left: paddingApp),
      child: Column(
        children: [
          // bar de recher et menu
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.menu_rounded,color: Colors.white,size: 38,),
              // bar de recherche
              const SizedBox(
                width: 280,
                // color: randomColor(),
                height: 30,
                child: Stack(
                  children: [
                    TextField(
                     decoration: InputDecoration(
                     contentPadding: EdgeInsets.all(0),
                     hintText: "Libreville,Gabon",
                     hintStyle: TextStyle(fontSize: 14,color: Colors.white),
                     fillColor: Color(0x75000000),
                     filled: true,
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30)),
                       borderSide: BorderSide(width: 0,style: BorderStyle.none),
                     ),
                     prefixIcon: Icon(Icons.location_on,size: 20,color: Colors.white,),
              ),
              )
                  ],
                ),
              ),
              // fin bar de recherche
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("assets/images/logo.jpg",width: 40,),
              ),
              SizedBox(width: paddingApp,)
            ],
          ),
        // fin bar de recherche et menu
        // Categories
        const CategorieHome(),
        // fin categories
        ],
      ),
    );
  }
}