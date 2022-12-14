import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Mywidget(),
  ));
}

class Mywidget extends StatefulWidget {
  const Mywidget({Key? key}) : super(key: key);
  @override
  State<Mywidget> createState() => _MywidgetState();
}

int scole = 0;
int index = 0;
List path = [
  Column(
    children: [Image.asset('images/oy.png'), Text('OY')],
  ),
  Column(
    children: [Image.asset('images/dar.png'), Text('data')],
  ),
  Column(
    children: [Image.asset('images/nat.png'), Text('data')],
  ),
  Column(
    children: [Image.asset('images/img.png'), Text('data')],
  ),
  Column(
    children: [Image.asset('images/yusuf.png'), Text('data')],
  )
];

class _MywidgetState extends State<Mywidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // if (scole > 4)
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Image.asset(path[index %4]),
              path[index],
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  // alignment: Alignment.bottomCenter,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              if (index > 0) {
                                index--;
                                scole--;
                              }
                              if (scole == index.bitLength) ;
                            });
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 40,
                          )),
                      Text(
                        'Score $scole',
                        style: TextStyle(fontSize: 30),
                      ),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              if (index != path.length - 1) {
                                index++;
                                scole++;
                              }
                            });
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            size: 40,
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
