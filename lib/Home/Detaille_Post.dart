import 'package:flutter/material.dart';

import '../compounent/drawer.dart';

class DetailPost extends StatefulWidget {
  final Map<String, dynamic> Postes;

  const DetailPost({Key? key, required this.Postes}) : super(key: key);

  @override
  _DetailPostState createState() => _DetailPostState();
}

class _DetailPostState extends State<DetailPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 226, 71, 195),
        title: Text('Details Post'),
        centerTitle: true,
      ),
      // drawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nom: ${widget.Postes['nom']}'),
            SizedBox(height: 8),
            Text('Lieu: ${widget.Postes['Lieu']}'),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}