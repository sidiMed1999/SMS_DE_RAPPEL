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
              return Listfemme(
                id_femme: femme[i]['id_femme'],
                femme[i]['nom'],
                femme[i]['prenom'],
                femme[i]['date_debut_grossesse'], 
              );
            }),
      ),
    );
  }
}

class Listfemme extends StatelessWidget {
  // ignore: unused_element
  // final id_femme;
  // final nom;
  // final prenom;
  // final date_debut_grossesse;
  // final femme;
  const Listfemme({this.femme,});
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
                  Text(femme['id_femme']),
                  Text(femme['nom']),
                  Text(femme['prenom']),
                  Text(femme['date_debut_grossesse']),
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
