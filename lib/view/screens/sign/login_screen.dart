// import 'package:flutter/material.dart';
// import 'package:social_media_app/view/screens/pages/home_screen.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width: double.infinity,
//           decoration: const BoxDecoration(
//               // image: DecorationImage(
//               //   image: AssetImage('assets/images/img2.jpg'),
//               //   fit: BoxFit.cover,
//               //   filterQuality: FilterQuality.high,
//               // ),
//               ),
//           child: Container(
//             decoration: BoxDecoration(
//                 // gradient: LinearGradient(
//                 //   begin: Alignment.bottomCenter,
//                 //   stops: const [
//                 //     0.35,
//                 //     0.85,
//                 //   ],
//                 //   colors: [
//                 //     Colors.yellow.withOpacity(0.85),
//                 //     Colors.blue.withOpacity(0.5),
//                 //   ],
//                 // ),
//                 ),
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
                  
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   TextField(
//                     decoration: InputDecoration(
//                         hintText: 'Email',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(5.0),
//                         )),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextField(
//                     decoration: InputDecoration(
//                         hintText: 'Password',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(5.0),
//                         )),
//                   ),
//                   // Align(
//                   //   alignment: Alignment.centerRight,
//                   //   child: MaterialButton(
//                   //     onPressed: () {},
//                   //     child: const CustomText(
//                   //       text: 'Forget password',
//                   //       fontSize: 12,
//                   //       color: Colors.red,
//                   //       fontWeight: FontWeight.bold,
//                   //     ),
//                   //   ),
//                   // ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.5),
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                     child: MaterialButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const HomeScreen(),
//                             ));
//                       },
//                       child: const CustomText(
//                         text: 'Login',
//                         fontSize: 18,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const CustomText(
//                     text: 'or',
//                     fontSize: 16,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w400,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.5),
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                     child: MaterialButton(
//                       onPressed: () {},
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             'assets/icons/google.png',
//                             height: 30,
//                             fit: BoxFit.cover,
//                           ),
//                           const SizedBox(
//                             width: 20,
                          
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.5),
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                     child: MaterialButton(
//                       onPressed: () {},
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             'assets/icons/facebook.png',
//                             height: 30,
//                             fit: BoxFit.cover,
//                           ),
//                           const SizedBox(
//                             width: 5,
//                           ),
                          
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
                     
//                       const SizedBox(
//                         width: 5,
//                       ),
                     
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
