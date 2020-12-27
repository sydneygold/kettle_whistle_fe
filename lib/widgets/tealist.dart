// import 'package:flutter/material.dart';


// class TeaList extends StatefulWidget {
//   TeaList({Key key}) : super(key: key);

//   @override
//   _TeaListState createState() => _TeaListState();

//   TeaRecipes({this.teaInfo});

//   final teaInfo;

//   String black;
//   String green;
//   String herbal;
//   String oolong;
//   String white;
//   String puerh;
//   String matcha;
//   String chai;

//   @override
//   void initState() {
//     super.initState();
//     print(widget.teaInfo);
//     updateUI(widget.teaInfo);
//   }

//   void updateUI(dynamic teaInfo){
//     black = teaInfo[0]['name'];
//     green = teaInfo[1]['name'];
//     herbal = teaInfo[2]['name'];
//     oolong = teaInfo[3]['name'];
//     white = teaInfo[4]['name'];
//     puerh = teaInfo[5]['name'];
//     matcha = teaInfo[6]['name'];
//     chai = teaInfo[7]['name'];
    
//   }

// }

// class _TeaListState extends State<TeaList> {

//   FlatButton buildTeaCard(String name) {
//     return FlatButton(
//       color: Color.fromRGBO(0, 153, 180, 0.7),
//       child: ListTile(
//         leading: Icon(
//           Icons.eco_sharp,
//           color: Colors.lightGreen[300],
//           size: 30.0
//         ),
//         title: Text(
//           '$name',
//           textAlign: TextAlign.start,
//           style: TextStyle(
//             fontFamily: 'Josefin Slab',
//             fontWeight: FontWeight.w800,
//             fontSize: 25.0
//           ),
//         ),
//       ),
//       onPressed: () {
//         Navigator.push(context, MaterialPageRoute(builder: (context) => TeaCard()));
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column( 
//         children: [
//           Container(
//             child: buildTeaCard(black)
//           ),
//           SizedBox( 
//             height: 5.0,
//             width: double.infinity,
//           ),
//           Container(
//             child: buildTeaCard(green)
//           ),
//           SizedBox( 
//             height: 5.0,
//             width: double.infinity,
//           ),
//           Container(
//             child: buildTeaCard(herbal)
//           ),
//           SizedBox( 
//             height: 5.0,
//             width: double.infinity,
//           ),
//           Container(
//             child: buildTeaCard(oolong)
//           ),
//           SizedBox( 
//             height: 5.0,
//             width: double.infinity,
//           ),
//           Container(
//             child: buildTeaCard(white)
//           ),
//           SizedBox( 
//             height: 5.0,
//             width: double.infinity,
//           ),
//           Container(
//             child: buildTeaCard(puerh)
//           ),
//           SizedBox( 
//             height: 5.0,
//             width: double.infinity,
//           ),
//           Container(
//             child: buildTeaCard(matcha)
//           ),
//           SizedBox( 
//             height: 5.0,
//             width: double.infinity,
//           ),
//           Container(
//             child: buildTeaCard(chai)
//           ),
//         ],
//       ),
//     );
//   }
// }