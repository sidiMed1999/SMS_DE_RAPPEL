import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../compounent/drawer.dart';

class FemmeEnceinte extends StatefulWidget {
  const FemmeEnceinte({super.key});

  @override
  State<FemmeEnceinte> createState() => _FemmeEnceinteState();
}

class _FemmeEnceinteState extends State<FemmeEnceinte> {
  List femme = [
    {
      'id': 1,
      'nom': 'kadi',
      'prenom': 'med',
      'numero_tel': 22003443,
      'date debut de grossesse': 01 - 01 - 2023,
   
    },
    {
      'id': 2,
      'nom': 'mariem',
      'prenom': 'dah',
      'numero_tel': 32980443,
      'date debut de grossesse': 08 - 03 - 2023,
     
    },
    {
      'id': 3,
      'nom': 'Aichetou',
      'prenom': 'lemin',
      'numero_tel': 2863443,
      'date debut de grossesse': 05 - 02 - 2023,
 
    },
    {
      'id': 3,
      'nom': 'Aichetou',
      'prenom': 'lemin',
      'numero_tel': 2863443,
      'date debut de grossesse': 05 - 02 - 2023,
    
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 226, 71, 195),
        title: Text('Femmes Enceintes'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      // drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(115, 226, 71, 195),
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed("homepage");
          }),
      body: Container(
        child: ListView.builder(
            itemCount: femme.length,
            itemBuilder: (context, i) {
              return Dismissible(
                key: ValueKey("$i"),
                child: Listfemme(femme: femme[i]),
              );
            }),
      ),
    );
  }
}

class Listfemme extends StatelessWidget {
  // ignore: unused_element
  final femme;
  Listfemme({this.femme});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('FemmeDetails');
      },
      child: Row(children: [
        Expanded(
          child: Card(
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("id: ${femme['id']}"),
                  Text("Nom: ${femme['nom']}"),
                  Text("Prénom: ${femme['prenom']}"),
                  Text("Date debut de grossesse: ${femme['date debut de grossesse']}"),
                ],
              ),

              // subtitle: MaterialButton(onPressed :(){},child :Text('remove'),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      // TODO: Implement edit functionality.
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // TODO: Implement delete functionality.
                    },
                  ),
                ],
              ),
              //  IconButton(
              // onPressed: (){},
              //  icon: Icon(Icons.remove),
              //  ),
            ),
          ),
        ),
      ]),
    );
  }

  // RaisedButton({required onPressed, required Text child}) {}
}
























































































































// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import '../compounent/drawer.dart';

// class FemmeEnceinte extends StatefulWidget {
//   const FemmeEnceinte({super.key});

//   @override
//   State<FemmeEnceinte> createState() => _FemmeEnceinteState();
// }

// class _FemmeEnceinteState extends State<FemmeEnceinte> {
//   List femme = [
//     {
//       'id': 1,
//       'nom': 'kadi',
//       'prenom': 'med',
//       'numero_tel': 22003443,
//       'date debut de grossesse': 01 - 01 - 2023,
//       'SMS rappel CPN1 ': 1 - 03 - 2023,
//       'SMS rappel CPN2 ': 1 - 05 - 2023,
//       'SMS rappel CPN3 ': 1 - 07 - 2023,
//       'SMS rappel CPN4 ': 1 - 08 - 2023,
//       'date de couchement': 1 - 09 - 2023,
//       'date de CPN': '11-09-2023',
//     },
//     {
//       'id': 2,
//       'nom': 'mariem',
//       'prenom': 'dah',
//       'numero_tel': 32980443,
//       'date debut de grossesse': 08 - 03 - 2023,
//       'SMS rappel CPN1 ': 08 - 05 - 2023,
//       'SMS rappel CPN2 ': 1 - 08 - 2023,
//       'SMS rappel CPN3 ': 1 - 09 - 2023,
//       'SMS rappel CPN4 ': 1 - 10 - 2023,
//       'date de couchement': 08 - 11 - 2023,
//       'date de CPN': 18 - 11 - 2023,
//     },
//     {
//       'id': 3,
//       'nom': 'Aichetou',
//       'prenom': 'lemin',
//       'numero_tel': 2863443,
//       'date debut de grossesse': 05 - 02 - 2023,
//       'SMS rappel CPN1 ': 05 - 05 - 2023,
//       'SMS rappel CPN2 ': 05 - 08 - 2023,
//       'SMS rappel CPN3 ': 05 - 09 - 2023,
//       'SMS rappel CPN4 ': 05 - 08 - 2023,
//       'date de couchement': 05 - 10 - 2023,
//       'date de CPN': 15 - 09 - 2023,
//     },
//     {
//       'id': 3,
//       'nom': 'Aichetou',
//       'prenom': 'lemin',
//       'numero_tel': 2863443,
//       'date debut de grossesse': 05 - 02 - 2023,
//       'SMS rappel CPN1 ': 05 - 05 - 2023,
//       'SMS rappel CPN2 ': 05 - 08 - 2023,
//       'SMS rappel CPN3 ': 05 - 09 - 2023,
//       'SMS rappel CPN4 ': 05 - 08 - 2023,
//       'date de couchement': 05 - 10 - 2023,
//       'date de CPN': 15 - 09 - 2023,
//     },
//   ];

//   // Future getData() async {
//   //   var url = 'http://192.168.43.105:8000/grossesse/index.php';
//   //   var response = await http.get(url as Uri);
//   //   var responsebody = jsonDecode(response.body);
//   //   return responsebody;
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(115, 226, 71, 195),
//         title: Text('Femmes Enceintes'),
//         centerTitle: true,
//         actions: <Widget>[
//           IconButton(icon: Icon(Icons.search), onPressed: () {})
//         ],
//       ),
//       // drawer: MyDrawer(),
//       floatingActionButton: FloatingActionButton(
//           backgroundColor: Color.fromARGB(115, 226, 71, 195),
//           child: Icon(Icons.add),
//           onPressed: () {
//             Navigator.of(context).pushNamed("homepage");
//           }),
//       body: Container(
//         child: FutureBuilder(
//           // future: getData(),
//           builder: (BuildContext context,AsyncSnapshot snapshot) {
//             return ListView.builder(
//             // itemCount: snapshot.data.length,
//             itemBuilder: (context, i) {
//               final u = snapshot.data[i];
//               return Dismissible(
//                   key: ValueKey("$u"),
//                   child: ListFemme(
//                     femme: snapshot.data[i],
//                   ));
//             });

//           }
//         ),
//       ),
//     );
//   }
// }

// class ListFemme extends StatelessWidget {
//   // ignore: unused_element
//   final femme;
//   ListFemme({this.femme});
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).pushNamed('FemmeDetails');
//       },
//       child: Row(children: [
//         Expanded(
//           child: ListTile(
//             title: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("id: ${femme['id']}"),
//                 Text("Nom: ${femme['nom']}"),
//                 Text("Prénom: ${femme['prenom']}"),
//                 Text("Numéro de téléphone: ${femme['numero_tel']}"),
//                 Text(
//                     "Date début de grossesse: ${femme['date debut de grossesse']}"),
//                 Text("Date SMS rappel CPN1: ${femme['SMS rappel CPN1 ']}"),
//                 Text("Date SMS rappel CPN2: ${femme['SMS rappel CPN2 ']}"),
//                 Text("Date SMS rappel CPN3: ${femme['SMS rappel CPN3 ']}"),
//                 Text("Date SMS rappel CPN4: ${femme['SMS rappel CPN4 ']}"),
//                 Text("Date de couchement: ${femme['date de couchement']}"),
//                 Text("Date de CPN: ${femme['date de CPN']}"),
//               ],
//             ),

//             // subtitle: MaterialButton(onPressed :(){},child :Text('remove'),),
//             trailing: IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.edit),
//             ),
//             //  IconButton(
//             // onPressed: (){},
//             //  icon: Icon(Icons.remove),
//             //  ),
//           ),
//         ),
//       ]),
//     );
//   }

//   // RaisedButton({required onPressed, required Text child}) {}
// }
