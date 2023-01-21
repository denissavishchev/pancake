import 'package:flutter/material.dart';
import 'package:pancake/model.dart';

import 'custom_buttons.dart';

class ItemBox extends StatelessWidget {
  const ItemBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: FutureBuilder<List<Pancakes>>(
        future: PancakesApi.getPancakes(context),
        builder: (context, snapshot) {
          final pancakes = snapshot.data;
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            default:
              return buildPancakes(pancakes!);
          }
        },
      ),
    );
  }

  Widget buildPancakes(List<Pancakes> pancakes) => ListView.builder(
      padding: const EdgeInsets.fromLTRB(1, 100, 1, 60),
      itemCount: pancakes.length,
      itemBuilder: (context, index) {
        final pancake = pancakes[index];
        return Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 20, 20),
          padding: const EdgeInsets.only(left: 20),
          color: Colors.yellowAccent.withOpacity(0.0),
          height: 120,
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xff2376b9).withOpacity(0.9),
                            const Color(0xff2376b9).withOpacity(0.1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                      ),
                    ),
                  ),
                  Container(
                    width: 117,
                    height: 117,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xff071423).withOpacity(0.8),
                            const Color(0xff071423).withOpacity(0.4),
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft
                      ),
                    ),
                  ),
                  Container(
                    width: 103,
                    height: 103,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xff2376b9).withOpacity(0.6),
                            const Color(0xff2376b9).withOpacity(0.0),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                      ),
                    ),
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 100,
                      height: 100,
                      child: Image.asset('assets/images/${pancake.image}.png',fit: BoxFit.fill,)),
                  Positioned(
                    top: 10,
                    left: 5,
                    child: Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xff5893e4),
                              spreadRadius: 12,
                              blurRadius: 38,
                            )
                          ]
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(pancake.name, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    PriceButton(text: pancake.price,),
                  ],
                ),
              ),
              const Spacer(),
              CheckButton()
            ],
          ),
        );
      });
}

