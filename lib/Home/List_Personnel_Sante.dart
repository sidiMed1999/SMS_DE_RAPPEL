import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../compounent/drawer.dart';
import 'dart:developer' as developer;

class PersonnelSante extends StatefulWidget {
  const PersonnelSante({super.key});

  @override
  State<PersonnelSante> createState() => _PersonnelSanteState();
}

class _PersonnelSanteState extends State<PersonnelSante> {
  List Medecies = [
    {
      'id': 1,
      'nom': 'kadi',
      'prenom': 'med',
      'numero_tel': 22003443,
      'Specialite': "sagefemme",
    },
    {
      'id': 1,
      'nom': 'kadi',
      'prenom': 'med',
      'numero_tel': 22003443,
      'Specialite': "Infimer",
    },
    {
      'id': 1,
      'nom': 'kadi',
      'prenom': 'med',
      'numero_tel': 34763443,
      'Specialite': "sagefemme",
    },
    {
      'id': 1,
      'nom': 'kadi',
      'prenom': 'med',
      'numero_tel': 20645443,
      'specialite': "Medecine",
    },
  ];

 var listsearch = [];

Future<void> getData() async {
  var url = "http://192.168.43.105/grossesse/Search.php";
  var response = await http.get(Uri.parse(url));

  try {
    var responsebody = jsonDecode(response.body);
    for (int i = 0; i < responsebody.length; i++) {
      listsearch.add(responsebody[i]['nom']);
    }
    setState(() {}); // Rebuild the widget tree to update the UI
  } catch (e) {
    print("Error decoding JSON: $e");
  }
}

@override
void initState() {
  super.initState();
  getData();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 226, 71, 195),
        title: Text('Personneles de Sante'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                    context: context, delegate: DataSearch(list: listsearch));
              })
        ],
      ),
      // drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(115, 226, 71, 195),
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed("AjouterPerSante");
          }),
      body: Container(
        child: ListView.builder(
            itemCount: Medecies.length,
            itemBuilder: (context, i) {
              final u = Medecies[i];
              return Dismissible(
                  key: ValueKey("$u"),
                  child: ListMedecies(
                    Medecies: Medecies[i],
                  ));
            }),
      ),
    );
  }
}

class ListMedecies extends StatelessWidget {
  // ignore: unused_element
  final Medecies;
  ListMedecies({this.Medecies});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('DetailPersSante');
      },
      child: Row(children: [
        Expanded(
          child: ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("id: ${Medecies['id']}"),
                Text("Nom: ${Medecies['nom']}"),
                Text("Prénom: ${Medecies['prenom']}"),
                Text("Numéro de téléphone: ${Medecies['numero_tel']}"),
                Text("Specialite: ${Medecies['specialite']}"),
              ],
            ),

            // subtitle: MaterialButton(onPressed :(){},child :Text('remove'),),
            trailing: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("AjouterPerSante");
              },
              icon: Icon(Icons.edit),
            ),
            //  IconButton(
            // onPressed: (){},
            //  icon: Icon(Icons.remove),
            //  ),
          ),
        ),
      ]),
    );
  }

  // RaisedButton({required onPressed, required Text child}) {}
}

class DataSearch extends SearchDelegate<String> {
  List<dynamic> list;
  DataSearch({required this.list});

  // Future getSearchData() async {
  //   var url = "http://192.168.43.105/grossesse/SearchPerSant.php";
  //   var data = {"searchpersant": query};
  //   var response = await http.post(url, body: data);
  //   var responsebody = jsonDecode(response.body);
  //   return responsebody;
  // }

  @override
  List<Widget>? buildActions(BuildContext context) {
    // Action for AppBar
    return [
      IconButton(
        onPressed: () {
          query = '';
          developer.log('', name: 'clear');
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // Icon Leading
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Results search
    return buildResults(context) ;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show when someone search for something
    // var searchlist =
    //     query.isEmpty ? list : list.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, i) {
          return ListTile(leading: Icon(Icons.person) , title:Text(list[i]) );
        });
  }
}

    // ListView.builder(
    //       itemCount: searchlist.length,
    //       itemBuilder: (context, i) {
    //         return ListTile(
    //             leading: Icon(Icons.person),
    //             title: Text(searchlist[i]),
    //             onTap: () {
    //               query = searchlist[i];
    //               showResults(context);
    //             });
    //       });
    // }
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import '../compounent/drawer.dart';

// class PersonnelSante extends StatefulWidget {
//   const PersonnelSante({super.key});

//   @override
//   State<PersonnelSante> createState() => _PersonnelSanteState();
// }

// class _PersonnelSanteState extends State<PersonnelSante> {
//   List Medecies = [
//     {
//       'id': 1,
//       'nom': 'kadi',
//       'prenom': 'med',
//       'numero_tel': 22003443,
//       'Specialite': "sagefemme",
//     },
//     {
//       'id': 1,
//       'nom': 'kadi',
//       'prenom': 'med',
//       'numero_tel': 22003443,
//       'Specialite': "Infimer",
//     },
//     {
//       'id': 1,
//       'nom': 'kadi',
//       'prenom': 'med',
//       'numero_tel': 34763443,
//       'Specialite': "sagefemme",
//     },
//     {
//       'id': 1,
//       'nom': 'kadi',
//       'prenom': 'med',
//       'numero_tel': 20645443,
//       'specialite': "Medecine",
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(115, 226, 71, 195),
//         title: Text('Personneles de Sante'),
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
//             Navigator.of(context).pushNamed("AjouterPerSante");
//           }),
//       body: Container(
//         child: ListView.builder(
//             itemCount: Medecies.length,
//             itemBuilder: (context, i) {
//               final u = Medecies[i];
//               return Dismissible(
//                   key: ValueKey("$u"),
//                   child: ListMedecies(
//                     Medecies: Medecies[i],
//                   ));
//             }),
//       ),
//     );
//   }
// }

// class ListMedecies extends StatelessWidget {
//   // ignore: unused_element
//   final Medecies;
//   ListMedecies({this.Medecies});
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).pushNamed('DetailPersSante');
//       },
//       child: Row(children: [
//         Expanded(
//           child: ListTile(
//             title: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("id: ${Medecies['id']}"),
//                 Text("Nom: ${Medecies['nom']}"),
//                 Text("Prénom: ${Medecies['prenom']}"),
//                 Text("Numéro de téléphone: ${Medecies['numero_tel']}"),
//                 Text("Specialite: ${Medecies['specialite']}"),
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
