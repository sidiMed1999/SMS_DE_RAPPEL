// class ListePost extends StatefulWidget {
import 'package:flutter/material.dart';

import '../compounent/drawer.dart';

class ListePost extends StatefulWidget {
  const ListePost({super.key});

  @override
  State<ListePost> createState() => _ListePostState();
}

class _ListePostState extends State<ListePost> {
  List Postes = [
    {
      'nom': 'El menar',
      'Lieu': 'ksar',
    },
    {
      'nom': 'El menar',
      'Lieu': 'ksar',
    },
    {
      'nom': 'El menar',
      'Lieu': 'ksar',
    },
    {
      'nom': 'El menar',
      'Lieu': 'ksar',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 226, 71, 195),
        title: Text('Les Postes'),
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
            Navigator.of(context).pushNamed("AjouterPost");
          }),
      body: Container(
        child: ListView.builder(
            itemCount: Postes.length,
            itemBuilder: (context, i) {
              final u = Postes[i];
              return Dismissible(
                  key: ValueKey("$u"),
                  child: ListPostes(
                    Postes: Postes[i],
                  ));
            }),
      ),
    );
  }
}

class ListPostes extends StatelessWidget {
  // ignore: unused_element
  final Postes;
  ListPostes({this.Postes});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('DetailPost');
      },
      child: Row(children: [
        Expanded(
          child: ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nom: ${Postes['nom']}"),
                Text("Lieu: ${Postes['Lieu']}"),
              ],
            ),

            // subtitle: MaterialButton(onPressed :(){},child :Text('remove'),),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
          ),
        ),
      ]),
    );
  }
}
