import 'package:flutter/material.dart';

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
                    color: Colors.white.withOpacity(0.5),
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
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.ac_unit, color: Colors.white,),
                      Text('Panckaes', style: TextStyle(
                          color: Colors.white,
                        fontFamily: 'Redressed',
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      ),),
                      Icon(Icons.access_alarm, color: Colors.white,)
                    ],
                  ),Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                          child: Icon(Icons.ac_unit, color: Colors.white,)),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.ac_unit, color: Colors.white,),
                          Icon(Icons.ac_unit, color: Colors.white,),
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
