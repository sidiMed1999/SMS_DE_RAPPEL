import 'package:flutter/material.dart';

class AjouterPost extends StatefulWidget {
  const AjouterPost({super.key});

  @override
  State<AjouterPost> createState() => _AjouterPostState();
}

class _AjouterPostState extends State<AjouterPost> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 226, 71, 195),
        title: Text('Admin'),
        centerTitle: true,
        // actions: <Widget>[
        //   IconButton(icon: Icon(Icons.search), onPressed: () {})
        // ],
      ),
      // drawer: MyDrawer(),
      body: ListView(padding: EdgeInsets.all(15), children: [
        //logo
        Center(
          child: Image.asset(
            "images/admin1.png",
            height: 150,
            width: 150,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            'Ajouter Post',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          padding: EdgeInsets.all(25),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Nom',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre nom';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Lieu',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre lieu';
                  }
                  return null;
                },
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Ajouter'),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ),
      ]),
    );
  }
}
