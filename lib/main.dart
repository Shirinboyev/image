// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Mywidget(),
//   ));
// }

// class Mywidget extends StatefulWidget {
//   const Mywidget({Key? key}) : super(key: key);
//   @override
//   State<Mywidget> createState() => _MywidgetState();
// }

// int scole = 1;
// int index = 0;
// List path = [
//   SingleChildScrollView(
//     child: Column(
//       children: [
//         Image.asset('images/2.png'),
//         Text('Iphone 2', style: TextStyle(fontSize: 30))
//       ],
//     ),
//   ),
//   Column(
//     children: [
//       Image.asset('images/3.png'),
//       Text('Iphone 3', style: TextStyle(fontSize: 30))
//     ],
//   ),
//   Column(
//     children: [
//       Image.asset('images/4.png'),
//       Text('Iphone 4', style: TextStyle(fontSize: 30))
//     ],
//   ),
//   Column(
//     children: [
//       Image.asset('images/5.png'),
//       Text('Iphone 5', style: TextStyle(fontSize: 30))
//     ],
//   ),
//   Column(
//     children: [
//       Image.asset('images/5s.png'),
//       Text('Iphone 5s', style: TextStyle(fontSize: 30))
//     ],
//   ),
//   Column(
//     children: [
//       Image.asset('images/6.png'),
//       Text('Iphone 6', style: TextStyle(fontSize: 30))
//     ],
//   ),
//   Column(
//     children: [
//       Image.asset('images/6s.png'),
//       Text('Iphone 6s', style: TextStyle(fontSize: 30))
//     ],
//   ),
//   Column(
//     children: [
//       Image.asset('images/7.png'),
//       Text('Iphone 7', style: TextStyle(fontSize: 30)),
//     ],
//   ),
//   Column(
//     children: [
//       Image.asset('images/7+.png'),
//       Text('Iphone 7s', style: TextStyle(fontSize: 30)),
//     ],
//   ),
//   Column(
//     children: [
//       Image.asset('images/8.png'),
//       Text('Iphone 8', style: TextStyle(fontSize: 30)),
//     ],
//   ),
//   Column(
//     children: [
//       Image.asset('images/10.png'),
//       Text('Iphone x', style: TextStyle(fontSize: 30)),
//     ],
//   ),
//   Column(
//     children: [
//       Image.asset('images/10s.png'),
//       Text('Iphone Xs', style: TextStyle(fontSize: 30)),
//     ],
//   ),
// ];

// class _MywidgetState extends State<Mywidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Iphone page'),
//       ),
//       body: Container(
//         color: Colors.white,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // if (scole > 4)
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 // Image.asset(path[index %4]),
//                 path[index],
//                 Padding(
//                   padding: const EdgeInsets.only(top: 200),
//                   child: Container(
//                     // alignment: Alignment.bottomCenter,
//                     color: Colors.white,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         TextButton(
//                             onPressed: () {
//                               setState(() {
//                                 if (index > 0) {
//                                   index--;
//                                   scole--;
//                                 }
//                                 if (scole == index.bitLength) ;
//                               });
//                             },
//                             child: Icon(
//                               Icons.arrow_back,
//                               size: 40,
//                             )),
//                         Text(
//                           'Score $scole',
//                           style: TextStyle(fontSize: 30),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             setState(() {
//                               if (index != path.length - 1) {
//                                 index++;
//                                 scole++;
//                               }
//                             });
//                           },
//                           child: Icon(
//                             Icons.arrow_forward,
//                             size: 40,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(MyText());
}

class MyText extends StatefulWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: _controller,
              ),
              Text(_controller.text),
              TextButton(
                  onPressed: () {
                    print(_controller.text);
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
