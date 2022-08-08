// MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.green),
//       home: Scaffold(
//         appBar: AppBar(
//           leading: const Icon(
//             Icons.home_filled,
//             color: Colors.black,
//           ),
//           // leading:const Icon(Icons.arrow_back_ios_new_outlined,),
//           title: const Text("Comfort "),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               //  padding: const EdgeInsets.fromLTRB(69, 0, 30, 4),
//               //child:
//               Text(
//                 "${get.read('id')} ",
//                 style: const TextStyle(
//                     fontSize: 34,
//                     color: Color.fromARGB(255, 255, 144, 144),
//                     fontWeight: FontWeight.w500),
//               ),

//               const Text(
//                 "Login Successfully",
//                 style: TextStyle(
//                     fontSize: 34,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w500),
//               ),
//               const Padding(
//                 padding: EdgeInsets.fromLTRB(72, 6, 4, 400),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   ElevatedButton.icon(
//                       onPressed: () {
//                         controller.logout();
//                       },
//                       icon: const Icon(
//                         Icons.logout,
//                         color: Color.fromARGB(255, 0, 0, 0),
//                       ),
//                       label: const Text(
//                         "Logout ",
//                         style: TextStyle(
//                           fontSize: 34,
//                         ),
//                       )),
//                   ElevatedButton.icon(
//                       onPressed: () {
//                         controller.back();
//                       },
//                       icon: const Icon(Icons.close,
//                           color: Color.fromARGB(255, 255, 4, 4)),
//                       label: const Text(
//                         "Exit ",
//                         style: TextStyle(
//                           fontSize: 34,
//                         ),
//                       )),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// //
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Hello Home'));
  }
}
