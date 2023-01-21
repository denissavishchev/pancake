import 'package:flutter/material.dart';
import 'package:pancake/model.dart';

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
      itemCount: pancakes.length,
      itemBuilder: (context, index) {
        final pancake = pancakes[index];
        return Container(
          color: Colors.yellowAccent.withOpacity(0.1),
          width: 120,
          height: 120,
          child: Row(
            children: [
              Image.asset('assets/images/${pancake.image}.png'),
              Column(
                children: [
                  Text(pancake.name),
                  Text(pancake.price),
                ],
              )
            ],
          ),
        );
      });
}

