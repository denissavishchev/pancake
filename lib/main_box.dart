import 'package:flutter/material.dart';
import 'package:pancake/custom_buttons.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MainBox extends StatelessWidget {
  const MainBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(80)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 120,
                  )
                ],
                color: Colors.yellow
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.45 + 5,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xff2b4f70),
                  Color(0xff7bc9ef),
                  Color(0xffaefefd),
                  Color(0xff7bc9ef),
                  Color(0xff2b4f70),
                ]
            ),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(80, 50),
              bottomLeft: Radius.elliptical(80, 50),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(80, 50),
                bottomLeft: Radius.elliptical(80, 50),
              ),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bg.png',
                  ),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TopButton(width: 69, icon: 'arrow',),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(40)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.08),
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: const Offset(0, 5),
                            )
                          ]
                        ),
                        child: GradientText('Pancakes', style: const TextStyle(
                          fontFamily: 'Redressed',
                          fontWeight: FontWeight.bold,
                          fontSize: 52
                        ), colors: const [
                          Colors.white,
                          Color(0xff132c43),
                        ],
                          gradientType: GradientType.linear,
                          gradientDirection: GradientDirection.ttb,
                        ),
                      ),
                      const TopButton(width: 39, icon: 'dots')
                    ],
                  ),Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                          child: StatisticButton(icon: 'star', text: '4.9',)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          StatisticButton(icon: 'chat', text: '80',),
                          MapButton(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
