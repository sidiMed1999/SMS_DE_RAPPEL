import 'package:flutter/material.dart';

class AjouterPerSante extends StatefulWidget {
  const AjouterPerSante({super.key});

  @override
  State<AjouterPerSante> createState() => _AjouterPerSanteState();
}

class _AjouterPerSanteState extends State<AjouterPerSante> {
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
          height: 10,
        ),
        Center(
          child: Text(
            'Ajouter Utilisateur',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Id_U',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre ID';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
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
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'Prenom',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre prenom';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Numero_tel',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre Numero';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Specialite',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre Specialite';
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
