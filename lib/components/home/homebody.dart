import 'package:flutter/material.dart';
import 'package:restaurant/components/home/contenthome.dart';
import 'package:restaurant/components/home/homeheader.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        // color: Colors.purple,
        width: MediaQuery.of(context).size.width,
        // height: 300,
        child: Stack(
          children: [
            // form absolute
            Positioned(
              right: 0,
              child: Image.asset("assets/images/app-effets/forme.png",width: 400,)
            ),
            // fin form absolute
            // Contenu du body
             Column(
              children: [
                const HomeHeader(),
                ContentHome(),
              ],
            )
            // Fin contenu du body
          ],
        ),
      ),
    );
  }
}