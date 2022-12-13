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
List<String> path = [
  'images/dar.png',
  'images/nat.png',
  'images/img.png',
  'images/yusuf.png'
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
          Image.asset(path[index % 4]),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  // alignment: Alignment.bottomCenter,
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index--;
                            scole--;
                            if(scole==index.bitLength);
                          });
                        },
                        child: Text(
                          '<',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                      Text(
                        'Score $scole',
                        style: TextStyle(fontSize: 30),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index++;
                            scole++;
                          });
                        },
                        child: Text(
                          '>',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      )
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
