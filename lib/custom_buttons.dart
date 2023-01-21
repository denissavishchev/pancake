import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {

  final double width;
  final String icon;

  const TopButton({Key? key,
    required this.width,
    required this.icon,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: width,
          height: 39,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  const Color(0xff2376b9).withOpacity(0.6),
                  const Color(0xff2376b9).withOpacity(0.1),
                ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(6),
          width: width - 4,
          height: 35,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xff071423).withOpacity(1),
                const Color(0xff071423).withOpacity(0.5),
              ],
              stops: const[
                0.5, 1
              ]
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Image.asset('assets/icons/$icon.png'),
        ),
        Positioned(
          top: 5,
          left: 20,
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  spreadRadius: 8,
                  blurRadius: 20,
                )
              ]
            ),
          ),
        )
      ],
    );
  }
}

class StatisticButton extends StatelessWidget {

  final String icon;
  final String text;

  const StatisticButton({Key? key,
    required this.icon,
    required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  const Color(0xff2376b9).withOpacity(0.6),
                  const Color(0xff2376b9).withOpacity(0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            ),
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(6),
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  const Color(0xff071423).withOpacity(1),
                  const Color(0xff071423).withOpacity(0.5),
                ],
                stops: const[
                  0.5, 1
                ]
            ),
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 20,
                  height: 18,
                  child: Image.asset('assets/icons/$icon.png')),
              const SizedBox(height: 4,),
              Text(text, style: const TextStyle(color: Colors.white, fontSize: 18),),
            ],
          ),
        ),
        Positioned(
          top: 5,
          left: 20,
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 20,
                  )
                ]
            ),
          ),
        )
      ],
    );
  }
}

class MapButton extends StatelessWidget {
  const MapButton({Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  const Color(0xff2376b9).withOpacity(0.6),
                  const Color(0xff2376b9).withOpacity(0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            ),
            borderRadius: const BorderRadius.all(Radius.circular(40)),
          ),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          width: 74,
          height: 74,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  const Color(0xff071423).withOpacity(1),
                  const Color(0xff071423).withOpacity(0.5),
                ],
                stops: const[
                  0.5, 1
                ]
            ),
            borderRadius: const BorderRadius.all(Radius.circular(40)),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 80,
                  child: Image.asset('assets/icons/map.png',fit: BoxFit.cover,)),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Image.asset('assets/icons/placeholder.png'),
              ),
            ],
          ),
        ),
        Positioned(
          top: 5,
          left: 20,
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 20,
                  )
                ]
            ),
          ),
        )
      ],
    );
  }
}

class PriceButton extends StatelessWidget {

  final String text;

  const PriceButton({Key? key,
    required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 69,
          height: 39,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  const Color(0xff2376b9).withOpacity(0.6),
                  const Color(0xff2376b9).withOpacity(0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          width: 65,
          height: 35,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  const Color(0xff071423).withOpacity(1),
                  const Color(0xff071423).withOpacity(0.5),
                ],
                stops: const[
                  0.5, 1
                ]
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 18,
                    height: 18,
                    child: Image.asset('assets/icons/euro.png')),
              ),
              Text(text, style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 30, fontWeight: FontWeight.bold),),
              Text('99', style: TextStyle(color: Colors.white.withOpacity(0.8)),),
            ],
          ),
        ),
        Positioned(
          top: 5,
          left: 20,
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 20,
                  )
                ]
            ),
          ),
        )
      ],
    );
  }
}

