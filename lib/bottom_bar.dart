import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildNavBarItem('home', 0),
              buildNavBarItem('search', 1),
              buildNavBarItem('basket', 2),
              buildNavBarItem('card', 3),
              buildNavBarItem('user', 4),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildNavBarItem(String image, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Visibility(
            visible: index == _selectedIndex,
            child: Container(
                width: index == _selectedIndex ? 64 : 35,
                height: index == _selectedIndex ? 64 : 35,
                padding: (index == _selectedIndex
                    ? const EdgeInsets.all(4)
                    : const EdgeInsets.all(6)),
                margin: EdgeInsets.only(
                    left: 10,
                    top: index == _selectedIndex ? 5 : 35,
                    bottom: 0
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          const Color(0xff2376b9).withOpacity(0.6),
                          const Color(0xff2376b9).withOpacity(0.0),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                    ),
                  borderRadius: const BorderRadius.all(Radius.circular(30)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff3fa1d6).withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 30,
                    ),
                  ],
                ),
              ),
          ),
          Container(
              width: index == _selectedIndex ? 60 : 35,
              height: index == _selectedIndex ? 60 : 35,
              padding: (index == _selectedIndex
                  ? const EdgeInsets.all(14)
                  : const EdgeInsets.all(6)),
              margin: EdgeInsets.only(
                  left: 10,
                  top: index == _selectedIndex ? 5 : 35,
                  bottom: 0
              ),
              decoration: BoxDecoration(
                color: index == _selectedIndex ? Color(0xff0c2e44) : Colors.transparent,
                  borderRadius: const BorderRadius.all(Radius.circular(30)
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xff3fa1d6).withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 10,
                    )
                  ],
                  ),
              child: Image.asset('assets/icons/$image.png')),
          Visibility(
            visible: index == _selectedIndex,
            child: Positioned(
              top: 10,
              left: 10,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 12,
                        blurRadius: 38,
                      )
                    ]
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
