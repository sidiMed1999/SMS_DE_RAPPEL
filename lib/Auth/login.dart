import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

showdialog(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(content: Row(children: [Text('loading...'),CircularProgressIndicator()],), );
      });
}

class _LoginState extends State<Login> {
  bool isloading = false;

  TextEditingController nom = new TextEditingController();
  TextEditingController password = new TextEditingController();

  GlobalKey<FormState> formKeyLogin = new GlobalKey<FormState>();

   bool _isPaswdHidden = true;

  double _logoHeight = 100;
  double _logoWidth = 100;

  bool _isLogoExpanded = false;
   // login() async {
  //   var formdata = formKeyLogin.currentState;
  //   if (formdata!.validate()) {
  //     formdata.save();
  //     showdialog(context);
  //     var data = {"nom": nom.text.toString(), "password": password.text.toString()};
  //     var url = "http://192.168.43.105/grossesse/login.php";
  //     var response = await http.post(Uri.parse(url), body: data);
  //     var responsebody = jsonDecode(response.body);
  //     if (responsebody['status'] == "success") {
  //       // print("object");
  //       Navigator.of(context).pushNamed('homepage');
  //     } else {
  //       print("erreur");

  //       if (Navigator.of(context).canPop()) {
  //          Navigator.of(context).pop();
  //       }
  //     }
  //   } else {
  //     print("not valid");
  //   }
  // }
 







//  login() async {
//     var formdata = formKeyLogin.currentState;
//     if (formdata!.validate()) {
//       formdata.save();
//       showdialog(context);
//       var data = {
//         "nom": nom.text,
//         "password": password.text,
      
//       };
//       var url = "http://192.168.43.105/grossesse/signup.php";
//       try {
//         var response = await http.post(Uri.parse(url), body: data);
//         var responsebody = jsonDecode(response.body);
//         if (response.statusCode == 200 && responsebody['status'] == "success") {
//           print("yes" + response.body.toString());
//           Navigator.of(context).pushNamed('homepage');
//         } else {
//           print("not valid");
//           if (Navigator.of(context).canPop()) {
//             Navigator.of(context).pop();
//           }
//         }
//       } on SocketException {
//         print("can't connect on internet");
//       }on FormatException{
//         print("probleme on backend");
//       }
//        catch (e) {
//         print("Error making HTTP request: " + e.toString());
//         if (Navigator.of(context).canPop()) {
//           Navigator.of(context).pop();
//         }
//       }
//     } else {
//       print("not valid");
//     }
//   }



















  void _toggleLogoExpansion() {
    setState(() {
      _isLogoExpanded = !_isLogoExpanded;

      _logoHeight = _isLogoExpanded ? 200 : 100;
      _logoWidth = _isLogoExpanded ? 200 : 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                GestureDetector(
                  onTap: () {
                    _toggleLogoExpansion();
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    height: _logoHeight,
                    width: _logoWidth,
                    child: Image.asset(
                      "images/baby.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: formKeyLogin,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: nom,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: 'nom',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return 'Veuillez entrer votre nom';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          controller: password,
                          obscureText: _isPaswdHidden,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return 'Veuillez entrer votre mot de passe';
                            }
                            return null;
                          },
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text("If you d'ont have an acout "),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed('signup');
                                },
                                child: Text(
                                  'Clicke isi',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 129, 175, 215)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: ElevatedButton(
                            onPressed: (){
                               Navigator.of(context).pushNamed('homepage');
                            },
                            child: Text(
                              'Se conncter',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





















































// import 'package:flutter/material.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
    //TextEditingController username = new TextEditingController();
  // TextEditingController password = new TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 //logo
//                 Center(
//                   child: Image.asset(
//                     "images/baby.png",
//                     height: 100,
//                     width: 100,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   padding: EdgeInsets.all(20),
//                   child: Form(
//                     key: _formKey,
//                     child: Column(
//                       children: [
//                         TextFormField(
  //                         controller: username,
//                           decoration: InputDecoration(
//                             prefixIcon: Icon(Icons.person),
//                             labelText: 'Nom',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(40),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'Veuillez entrer votre nom';
//                             }
//                             return null;
//                           },
//                         ),
//                         SizedBox(height: 15),
//                         TextFormField(
  //                         controller: password,
//                           decoration: InputDecoration(
//                             prefixIcon: Icon(Icons.lock),
//                             labelText: 'password',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(40),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'Veuillez entrer votre nom';
//                             }
//                             return null;
//                           },
//                         ),
//                         Container(
//                           margin: EdgeInsets.all(10),
//                           child: Row(
//                             children: [
//                               Text("If you d'ont have an acout "),
//                               InkWell(
//                                 onTap: () {
//                                   Navigator.of(context).pushNamed('signup');
//                                 },
//                                 child: Text(
//                                   'Click Here',
//                                   style: TextStyle(
//                                       color:
//                                           Color.fromARGB(255, 129, 175, 215)),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Container(
//                           child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.of(context)
//                                   .pushReplacementNamed("homepage");
//                             },
//                             child: Text(
//                               'sign up',
//                               style: TextStyle(fontSize: 20),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }





























// import 'package:flutter/material.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: Center(
//         child: ListView(
//           padding: EdgeInsets.all(40),
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 //logo
//                 Center(
//                   child: Image.asset(
//                     "images/baby.png",
//                     height: 100,
//                     width: 100,
//                   ),
//                 ),

//                 Container(
//                   padding: EdgeInsets.all(20),
//                   child: Form(
//                       key: _formKey,
//                       child: Column(
//                         children: [
//                           TextFormField(
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(Icons.person),
//                               labelText: 'Nom',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(40),
//                               ),
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Veuillez entrer votre nom';
//                               }
//                               return null;
//                             },
//                           ),
//                           SizedBox(height: 15),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(Icons.lock),
//                               labelText: 'password',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(40),
//                               ),
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Veuillez entrer votre nom';
//                               }
//                               return null;
//                             },
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(10),
//                             child: Row(
//                               children: [
//                                 Text("If you d'ont have an acout "),
//                                 InkWell(
//                                   onTap: () {
//                                     Navigator.of(context).pushNamed('signup');
//                                   },
//                                   child: Text(
//                                     'Click Here',
//                                     style: TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 129, 175, 215)),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           Container(
//                               child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.of(context)
//                                   .pushReplacementNamed("homepage");
//                             },
//                             child: Text(
//                               'sign up',
//                               style: TextStyle(fontSize: 20),
//                             ),
//                           )),
//                         ],
//                       )),
//                 )

//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
