import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:my_app/compounent/crud.dart';
// import 'package:my_app/compounent/linkApi.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

showdialog(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Row(
            children: [Text('loading...'), CircularProgressIndicator()],
          ),
        );
      });
}

class _SignUpState extends State<SignUp> {
  TextEditingController nom = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController email = new TextEditingController();
  GlobalKey<FormState> formKeySignup = new GlobalKey<FormState>();
  // Crud _crud = Crud();

  bool validateEmail(String email) {
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(email);
  }

  // sinUp() async {
  //   var response = await _crud.postRequest(linkSignup, {
  //     "nom": nom.text,
  //     "password": password.text,
  //     "email": email.text,
  //   });
  //   if (response['status'] == "success") {
  //     Navigator.of(context)
  //         .pushNamedAndRemoveUntil("homepage", (route) => false);
  //   } else {
  //     print("fail");
  //   }
  // }

  // signup() async {
  //   var formdata = formKeySignup.currentState;
  //   if (formdata != null && formdata.validate()) {
  //     formdata.save();
  //     showdialog(context);
  //     var data = {
  //       "nom": nom.text,
  //       "password": password.text,
  //       "email": email.text,
  //     };
  //     var url = "https://192.168.43.105/grossesse/signup.php";
  //     try {
  //       var response = await http.post(Uri.parse(url), body: data);
  //       var responsebody = jsonEncode(response.body);
  //       if (response.statusCode == 200 && responsebody.toString() == "success") {
  //         print("yes" + response.body.toString());
  //         Navigator.of(context).pushNamed('homepage');
  //       } else {
  //         print("not valid");
  //         if (Navigator.of(context).canPop()) {
  //           Navigator.of(context).pop();
  //         }
  //       }
  //     } on SocketException {
  //       print("can't connect on internet");
  //     }on FormatException{
  //       print("probleme on backend");
  //     }
  //      catch (e) {
  //       print("Error making HTTP request: " + e.toString());
  //       if (Navigator.of(context).canPop()) {
  //         Navigator.of(context).pop();
  //       }
  //     }
  //   } else {
  //     print("not valid");
  //   }
  // }



  // @override
  // void initState() {
  //   super.initState();
  //   signup();
  // }
  // signup() async {
  //   var formdata = formKeySignup.currentState;
  //   if (formdata!.validate()) {
  //     formdata.save();
  //     showdialog(context);
  //     var data = {
  //       "nom": nom.text.toString(),
  //       "password": password.text.toString(),
  //       "email": email.text.toString(),
  //     };
  //     var url = "http://192.168.43.105/grossesse/signup.php";
  //     var response = await http.post(Uri.parse(url), body: data);
  //     var responsebody = jsonDecode(response.body);
  //     if (responsebody['status'] == "success") {
  //       print("yes");
  //       Navigator.of(context).pushNamed('homepage');
  //     } else {
  //       if (Navigator.of(context).canPop()) {
  //         Navigator.of(context).pop();
  //       }
  //     }
  //   } else {
  //     print("not valid");
  //   }
  // }

  bool _isLogoBig = false;
  bool _isPasswordHidden = true;

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
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  height: _isLogoBig ? 200 : 100,
                  width: _isLogoBig ? 200 : 100,
                  child: Image.asset(
                    "images/baby.png",
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Form(
                      key: formKeySignup,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: nom,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Nom',
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
                            obscureText: _isPasswordHidden,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'mot de passe',
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
                          SizedBox(height: 15),
                          TextFormField(
                            controller: email,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return 'Veuillez entrer votre adresse e-mail';
                              } else if (!validateEmail(value)) {
                                return 'entrer une adresse e-mail comme sidi@gmail.com';
                              }
                              return null;
                            },
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Text("If you have an accout "),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('login');
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
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: (){
                                 Navigator.of(context).pushNamed('homepage');
                              },
                              child: Text(
                                'create an account',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      )),
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

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
  //TextEditingController username = new TextEditingController();
  // TextEditingController password = new TextEditingController();
  // TextEditingController email = new TextEditingController();
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
//                 Image.asset(
//                   "images/baby.png",
//                   height: 100,
//                   width: 100,
//                 ),
//                 SizedBox(height: 30),
//                 Container(
//                   padding: EdgeInsets.all(20),
//                   child: Form(
//                       key: _formKey,
//                       child: Column(
//                         children: [
//                           TextFormField(
  //                           controller: username,
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(Icons.person),
//                               hintText: 'Nom',
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
  //                           controller: password,
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(Icons.lock),
//                               hintText: 'mot de passe',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(40),
//                               ),
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Veuillez entrer votre mot de passe';
//                               }
//                               return null;
//                             },
//                           ),
//                           SizedBox(height: 15),
//                           TextFormField(
  //                           controller: email,
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(Icons.email),
//                               hintText: 'email',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(40),
//                               ),
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Veuillez entrer votre email';
//                               } else if (!value.contains('@')) {
//                                 return 'Veuillez entrer une adresse email valide';
//                               }
//                               return null;
//                             },
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(10),
//                             child: Row(
//                               children: [
//                                 Text("If you have an accout "),
//                                 InkWell(
//                                   onTap: () {
//                                     Navigator.of(context).pushNamed('login');
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
//                             margin: EdgeInsets.only(top: 20),
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.of(context)
//                                     .pushReplacementNamed("homepage");
//                               },
//                               child: Text(
//                                 'create an account',
//                                 style: TextStyle(fontSize: 20),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )),
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

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: ListView(
//         padding: EdgeInsets.all(30),
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               //logo
//               Center(
//                 child: Image.asset(
//                   "images/baby.png",
//                   height: 100,
//                   width: 100,
//                 ),
//               ),

//               Container(
//                 padding: EdgeInsets.all(20),
//                 child: Form(
//                     key: _formKey,
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           decoration: InputDecoration(
//                             prefixIcon: Icon(Icons.person),
//                             hintText: 'Nom',
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
//                           decoration: InputDecoration(
//                             prefixIcon: Icon(Icons.lock),
//                             hintText: 'mot de passe',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(40),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'Veuillez entrer votre mot de passe';
//                             }
//                             return null;
//                           },
//                         ),
//                         SizedBox(height: 15),
//                         TextFormField(
//                           decoration: InputDecoration(
//                             prefixIcon: Icon(Icons.email),
//                             hintText: 'email',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(40),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'Veuillez entrer votre email';
//                             } else if (!value.contains('@')) {
//                               return 'Veuillez entrer une adresse email valide';
//                             }
//                             return null;
//                           },
//                         ),
//                         Container(
//                           margin: EdgeInsets.all(10),
//                           child: Row(
//                             children: [
//                               Text("If you have an accout "),
//                               InkWell(
//                                 onTap: () {
//                                   Navigator.of(context).pushNamed('login');
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
//                             child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.of(context)
//                                 .pushReplacementNamed("homepage");
//                           },
//                           child: Text(
//                             'create an account',
//                             style: TextStyle(fontSize: 20),
//                           ),
//                         )),
//                       ],
//                     )),
//               )

            
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
