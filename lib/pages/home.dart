import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:restaurant/components/home/homebody.dart';
import 'package:restaurant/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(mainColor),
      body: const HomeBody(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: GNav(
        gap: 20,
        padding: const EdgeInsets.all(10),
        backgroundColor: Color(mainColor),
        color: Colors.white,
        activeColor: Color(mainColor),
        tabBackgroundColor: Colors.white,
        tabs: const [
          GButton(icon: Icons.home_rounded,text: "Home",),
          GButton(icon: Icons.shopping_basket_sharp,text: "Commandes",),
          GButton(icon: Icons.perm_contact_calendar,text: "Compte",),
        ],
      ),
      ),
    );
  }
}