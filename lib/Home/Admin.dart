import 'package:flutter/material.dart';
import 'package:my_app/compounent/drawer.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 226, 71, 195),
        title: Text('Admin'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      // drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //logo
              Image.asset(
                "images/admin1.png",
                height: 190,
                width: 190,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Parametres',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                children: [
                  //cat one
                  InkWell(
                    child: Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              'images/4.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Utilisateurs',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed('PersonnelSante');
                    },
                  ),
                  InkWell(
                    child: Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              'images/New_U.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Ajouter Utilisateur',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed('AjouterPerSante');
                    },
                  ),
                  InkWell(
                    child: Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              'images/Post.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Postes',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed('ListePost');
                    },
                  ),
                  InkWell(
                    child: Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              'images/New_P.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Ajouter Poste',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed('AjouterPost');
                    },
                  ), //end cat one
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}












































// import 'package:flutter/material.dart';
// import 'package:my_app/compounent/drawer.dart';

// class Admin extends StatefulWidget {
//    const Admin({Key? key}) : super(key: key);

//   @override
//   State<Admin> createState() => _AdminState();
// }

// class _AdminState extends State<Admin> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 208, 201, 201),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(115, 226, 71, 195),
//         title: Text('Admin'),
//         centerTitle: true,
//         actions: <Widget>[
//           IconButton(icon: Icon(Icons.search), onPressed: () {})
//         ],
//       ),
//       drawer: MyDrawer(),
//       body: ListView(
//         padding: EdgeInsets.all(15),
//         children: [
//           //logo
//           Center(
//             child: Image.asset(
//               "images/admin1.png",
//               height: 220,
//               width: 220,
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Center(
//             child: Text(
//               'Seting',
//               style: TextStyle(fontSize: 30),
//             ),
//           ),
//           GridView(
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//             children: [
//               Container(
//                 child: Card(
//                   child: Column(
//                     children: [
//                       Expanded(
//                           child: Image.asset('images/admin1.png',
//                               fit: BoxFit.cover)),
//                       Container(
//                         child: Text('Personnel Sante',
//                             style: TextStyle(fontSize: 30, color: Colors.blue)),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

//

// class Admin extends StatefulWidget {
//   const Admin({super.key});

//   final String title;

//   @override
//   _AdminState createState() => _AdminState();
// }

// class _AdminState extends State<Admin> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Column(
//         children: <Widget>[
//           Image.asset(
//             'images/accueil.jpg',
//             height: 250.0,
//             fit: BoxFit.cover,
//           ),
//           SizedBox(height: 20.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, '/page1');
//                 },
//                 child: Column(
//                   children: <Widget>[
//                     Image.asset(
//                       'images/page1_icon.jpg',
//                       height: 70.0,
//                       width: 70.0,
//                     ),
//                     Text('Page 1'),
//                   ],
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, '/page2');
//                 },
//                 child: Column(
//                   children: <Widget>[
//                     Image.asset(
//                       'images/page2_icon.jpg',
//                       height: 70.0,
//                       width: 70.0,
//                     ),
//                     Text('Page 2'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 20.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, '/page3');
//                 },
//                 child: Column(
//                   children: <Widget>[
//                     Image.asset(
//                       'images/page3_icon.jpg',
//                       height: 70.0,
//                       width: 70.0,
//                     ),
//                     Text('Page 3'),
//                   ],
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, '/page4');
//                 },
//                 child: Column(
//                   children: <Widget>[
//                     Image.asset(
//                       'images/page4_icon.jpg',
//                       height: 70.0,
//                       width: 70.0,
//                     ),
//                     Text('Page 4'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Page1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page 1'),
//       ),
//       body: Center(
//         child: Text('Contenu de la page 1'),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// Container(
//   padding: EdgeInsets.all(20),
//   child: Form(
//       child: Column(
//     children: [
//       TextFormField(
//         decoration: InputDecoration(
//           hintText: 'Id_U',
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40),
//           ),
//         ),
//         validator: (value) {
//           if (value!.isEmpty) {
//             return 'Veuillez entrer votre ID';
//           }
//           return null;
//         },
//       ),
//       SizedBox(height: 15),
//       TextFormField(
//         decoration: InputDecoration(
//           labelText: 'Nom',
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40),
//           ),
//         ),
//         validator: (value) {
//           if (value!.isEmpty) {
//             return 'Veuillez entrer votre nom';
//           }
//           return null;
//         },
//       ),
//       SizedBox(height: 15),
//       TextFormField(
//         decoration: InputDecoration(
//           hintText: 'Prenom',
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40),
//           ),
//         ),
//         validator: (value) {
//           if (value!.isEmpty) {
//             return 'Veuillez entrer votre prenom';
//           }
//           return null;
//         },
//       ),
//       SizedBox(height: 15),
//       TextFormField(
//         decoration: InputDecoration(
//           hintText: 'Numero_tel',
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40),
//           ),
//         ),
//         validator: (value) {
//           if (value!.isEmpty) {
//             return 'Veuillez entrer votre Numero';
//           }
//           return null;
//         },
//       ),
//       SizedBox(height: 15),
//       TextFormField(
//         decoration: InputDecoration(
//           hintText: 'Specialite',
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40),
//           ),
//         ),
//         validator: (value) {
//           if (value!.isEmpty) {
//             return 'Veuillez entrer votre Specialite';
//           }
//           return null;
//         },
//       ),
//       SizedBox(height: 18),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             child: ElevatedButton(
//               onPressed: () {},
//               child: Text('Ajouter'),
//             ),
//           ),
//         ],
//       ),
//     ],
//   )),
// ),
