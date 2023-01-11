import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

void main() {
  runApp(MaterialApp(
    home: SignUpPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController usernameTxt = TextEditingController();
  final TextEditingController passwordTxt = TextEditingController();
  final TextEditingController phoneNumberTxt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 180.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150.0),
                    bottomRight: Radius.circular(150.0)),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xffD81E5B),
                    Color(0xff23395B),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 115.0, left: MediaQuery.of(context).size.width / 3),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/736x/91/00/91/910091ac841d0ea09d85551c8312e65e.jpg"),
                backgroundColor: Colors.white,
                radius: 65.0,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 240.0, right: 10.0, left: 10.0),
              child: Column(
                children: [
                  TextField(
                    controller: usernameTxt,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.orange,
                      ),
                      //labelText: "Username",
                      hintText: "Username",
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    controller: passwordTxt,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.orange,
                      ),
                      //labelText: "Username",
                      hintText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    controller: phoneNumberTxt,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.orange,
                      ),
                      //labelText: "Username",
                      hintText: "PhoneNumber",
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Color.fromARGB(255, 67, 6, 209),
                  //     foregroundColor: Color.fromARGB(255, 255, 251, 251),
                  //     minimumSize: const Size(
                  //       180.0,
                  //       40.0,
                  //     ),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(50.0),
                  //     ),
                  //   ),
                  //   onPressed: () {},
                  //   child: Text("SIGNUP"),
                  // ),
                  GestureDetector(
                    onTap: () {
                      print("$usernameTxt+$passwordTxt+$phoneNumberTxt");
                    },
                    child: Container(
                      width: 180.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffD81E5B),
                            Color(0xff23395B),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(home: Login()));
// }

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Login"),
//           centerTitle: true,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Username",
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.black,
//                       width: 2.0,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.black,
//                       width: 2.0,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20.0,
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text("Login"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
