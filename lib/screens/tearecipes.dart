import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/appnavigation.dart';
import 'package:kettle_whistle_fe/screens/teacard.dart';


class TeaRecipes extends StatefulWidget {
  // TeaRecipes({Key key}) : super(key: key);
  TeaRecipes({this.teaInfo});

  final teaInfo;

  @override
  _TeaRecipesState createState() => _TeaRecipesState();
}

class _TeaRecipesState extends State<TeaRecipes> {

  Card makeCards(dynamic teaType, String name,) {
    return Card(
      color: Colors.white60,
      child: Row(children: [
        FlatButton(
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeaCard(teaDeets: teaType)),
                ),
            child: Icon(Icons.eco_outlined,)
        ),
        Text(name, 
          style: TextStyle(
            fontFamily: 'Josefin Slab',
            fontSize: 25.0,
            fontWeight: FontWeight.w700
          ),
        ),
      ]),
    );
  }

  @override
  void initState() {
    super.initState();

    print(widget.teaInfo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Tea Recipes',
          style: TextStyle(
            fontFamily: 'Dancing Script',
            fontSize: 40.0,
          )
        ),
        leading: FlatButton(
          splashColor: Colors.lightGreen[300],
          child: Icon(
            Icons.emoji_food_beverage,
            color: Colors.lightGreen[300],
            size: 40.0,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AppNav()));
          }
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/teaglass.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 550.0,
              width: 400.0,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.all(Radius.circular(5.0))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  makeCards(widget.teaInfo[0], 'Black Tea'),
                  makeCards(widget.teaInfo[1], 'Green Tea'),
                  makeCards(widget.teaInfo[2], 'Herbal Tea'),
                  makeCards(widget.teaInfo[3], 'Oolong Tea'),
                  makeCards(widget.teaInfo[4], 'White Tea'),
                  makeCards(widget.teaInfo[5], 'Puerh Tea'),
                  makeCards(widget.teaInfo[6], 'Matcha Tea'),
                  makeCards(widget.teaInfo[7], 'Chai'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class _TeaRecipesState extends State<TeaRecipes> {
  
//   String black;
//   String green;
//   String herbal;
//   String oolong;
//   String white;
//   String puerh;
//   String matcha;
//   String chai;

//   dynamic blackInfo;
//   dynamic greenInfo;
//   dynamic herbalInfo;
//   dynamic oolongInfo;
//   dynamic whiteInfo;
//   dynamic puerhInfo;
//   dynamic matchaInfo;
//   dynamic chaiInfo;

//   @override
//   void initState() {
//     super.initState();
//     print(widget.teaInfo[0]);
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
    
//     blackInfo = teaInfo[0];
//     greenInfo = teaInfo[1];
//     herbalInfo = teaInfo[2];
//     oolongInfo = teaInfo[3];
//     whiteInfo = teaInfo[4];
//     puerhInfo = teaInfo[5];
//     matchaInfo = teaInfo[6];
//     chaiInfo = teaInfo[7];
//   }

//   @override
//   Widget build(BuildContext context) {

//   FlatButton buildTeaCard(String name, Widget nav) {
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
//         Navigator.push(context, MaterialPageRoute(builder: (context) => nav));
//       },
//     );
//   }

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey[900],
//         title: Text(
//           'Tea Recipes',
//           style: TextStyle(
//             fontFamily: 'Dancing Script',
//             fontSize: 40.0,
//           )
//         ),
//         leading: FlatButton(
//           splashColor: Colors.lightGreen[300],
//           child: Icon(
//             Icons.emoji_food_beverage,
//             color: Colors.lightGreen[300],
//             size: 40.0,
//           ),
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) => AppNav()));
//           }
//         ),
//       ),
//       body: Container(
//         constraints: BoxConstraints.expand(),
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('images/teaglass.jpg'),
//             fit: BoxFit.cover
//           )
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 550.0,
//               width: 400.0,
//               decoration: BoxDecoration(
//                 color: Colors.black54,
//                 borderRadius: BorderRadius.all(Radius.circular(5.0))
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     child: buildTeaCard(black, TeaCard(teaInfo: teaInfo,))
//                   ),
//                   SizedBox( 
//                     height: 5.0,
//                     width: double.infinity,
//                   ),
//                   // Container(
//                   //   child: buildTeaCard(green)
//                   // ),
//                   // SizedBox( 
//                   //   height: 5.0,
//                   //   width: double.infinity,
//                   // ),
//                   // Container(
//                   //   child: buildTeaCard(herbal)
//                   // ),
//                   // SizedBox( 
//                   //   height: 5.0,
//                   //   width: double.infinity,
//                   // ),
//                   // Container(
//                   //   child: buildTeaCard(oolong)
//                   // ),
//                   // SizedBox( 
//                   //   height: 5.0,
//                   //   width: double.infinity,
//                   // ),
//                   // Container(
//                   //   child: buildTeaCard(white)
//                   // ),
//                   // SizedBox( 
//                   //   height: 5.0,
//                   //   width: double.infinity,
//                   // ),
//                   // Container(
//                   //   child: buildTeaCard(puerh)
//                   // ),
//                   // SizedBox( 
//                   //   height: 5.0,
//                   //   width: double.infinity,
//                   // ),
//                   // Container(
//                   //   child: buildTeaCard(matcha)
//                   // ),
//                   // SizedBox( 
//                   //   height: 5.0,
//                   //   width: double.infinity,
//                   // ),
//                   // Container(
//                   //   child: buildTeaCard(chai)
//                   // ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

