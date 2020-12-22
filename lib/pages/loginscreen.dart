import 'package:flutter/material.dart';
import 'widgets/loginform.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Kettle Whistle',
          style: TextStyle(
            fontFamily: 'Dancing Script',
            fontWeight: FontWeight.w500,
            fontSize: 35,
          )
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/portafilter.png'),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

// Center(
//         child: Container(
//           decoration: BoxDecoration(
            
//           ),
//           child: Container(
//             height: 300.0,
//             width: 300.0,
//             decoration: BoxDecoration(
//               color: Color.fromRGBO(150, 114, 98, 0.3),
//               borderRadius: BorderRadius.all(
//                 Radius.circular(30), 
//               ),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Card(
//                   child: ElevatedButton(
      //               child: Text('Login'),
      //               onPressed: () {
      //                 Navigator.pushNamed(context, '/home');
      //               },
      //             ),
      //           ),
      //           Card(
      //             child: ElevatedButton(
      //               child: Text('Signup'),
      //               onPressed: () {
      //                 Navigator.pushNamed(context, '/home');
      //               },
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),