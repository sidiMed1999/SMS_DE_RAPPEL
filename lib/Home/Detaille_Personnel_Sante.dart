import 'package:flutter/material.dart';

import '../compounent/drawer.dart';

class DetailPersSante extends StatefulWidget {
  final Map<String, dynamic> Medecies;

  const DetailPersSante({Key? key, required this.Medecies}) : super(key: key);

  @override
  _DetailPersSanteState createState() => _DetailPersSanteState();
}

class _DetailPersSanteState extends State<DetailPersSante> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 226, 71, 195),
        title: Text('Details Personnel Sante'),
        centerTitle: true,
      ),
      // drawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('id: ${widget.Medecies['id']}'),
            SizedBox(height: 8),
            Text('Nom: ${widget.Medecies['nom']}'),
            SizedBox(height: 8),
            Text('Prénom: ${widget.Medecies['prenom']}'),
            SizedBox(height: 8),
            Text('Numéro de téléphone: ${widget.Medecies['numero_tel']}'),
            SizedBox(height: 8),
            Text('Specialite : ${widget.Medecies['Specialite']}'),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
