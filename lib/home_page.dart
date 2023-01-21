import 'package:flutter/material.dart';
import 'bottom_bar_box.dart';
import 'item_box.dart';
import 'main_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: const ItemBox()),
            ),
            const MainBox(),
            Positioned(
                bottom: 0,
                child: BottomBarBox()
            ),
          ],
        ),
      )
    );
  }
}


