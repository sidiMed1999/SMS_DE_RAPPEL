import 'package:flutter/material.dart';
import '../compounent/drawer.dart';


class SmsMedecine extends StatefulWidget {
  const SmsMedecine({super.key});

  @override
  State<SmsMedecine> createState() => _SmsMedecineState();
}

class _SmsMedecineState extends State<SmsMedecine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 226, 71, 195),
        title: Text('Medcine'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          //logo
          Center(
            child: Image.asset(
              "images/Doctor.png",
              height: 180,
              width: 180,
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
                  labelText: 'ID',
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
                  keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre message';
                  }
                  return null;
                },
              ),
                SizedBox(height: 18),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Envoyer'),
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}

















// import '../compounent/drawer.dart';
// import 'package:flutter/material.dart';

// class SmsMedecine extends StatefulWidget {
//   const SmsMedecine({super.key});

//   @override
//   State<SmsMedecine> createState() => _SmsMedecineState();
// }

// class _SmsMedecineState extends State<SmsMedecine> {
//   List<String> idList = ['ID1', 'ID2', 'ID3', 'ID4'];
//   Set<String> selectedIds = {};

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 208, 201, 201),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(115, 226, 71, 195),
//         title: Text('Pesonnel de Sante'),
//         centerTitle: true,
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(30),
//         children: [
//           //logo
//           Center(
//             child: Image.asset(
//               "images/Doctor.png",
//               height: 180,
//               width: 180,
//             ),
//           ),

//           Container(
//             padding: EdgeInsets.all(20),
//             child: Form(
//                 child: Column(
//               children: [
//                 DropdownButtonFormField(
//                   value: selectedIds,
//                   items: idList
//                       .map((id) => DropdownMenuItem(value: id, child: Text(id)))
//                       .toList(),
//                   onChanged: (value) {
//                     setState(() {
//                       selectedIds = value as Set<String>;
//                     });
//                   },
//                   decoration: InputDecoration(
//                     hintText: 'ID',
//                     border:
//                         OutlineInputBorder(borderSide: BorderSide(width: 1)),
//                   ),
//                   isExpanded: true,
//                   icon: Icon(Icons.arrow_drop_down),
//                   iconSize: 24,
//                   elevation: 16,
//                   dropdownColor: Colors.white,
//                 ),
//                 SizedBox(height: 15),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Message',
//                     border:
//                         OutlineInputBorder(borderSide: BorderSide(width: 1)),
//                   ),
//                 ),
//                 SizedBox(height: 18),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(15),
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text('Envoyer'),
//                       ),
//                     ),
//                     Container(
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text('Annuler'),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             )),
//           ),
//         ],
//       ),
//     );
//   }
// }












// final TextEditingController _messageController = TextEditingController();
//   List<String> _selectedIds = [];

//   // @override
  // void dispose() {
  //   _messageController.dispose();
  //   super.dispose();
  // }

  // void _toggleSelected(String id) {
  //   setState(() {
  //     if (_selectedIds.contains(id)) {
  //       _selectedIds.remove(id);
  //     } else {
  //       _selectedIds.add(id);
  //     }
  //   });
  // }

  // void _sendMsg() {
  //   String msg = _messageController.text;
  //   // TODO: Envoyer le message à toutes les personnes correspondantes aux ids sélectionnés
  // }
  // void _removeMsg() {
  //   String msg = _messageController.text;
  //   // TODO: Envoyer le message à toutes les personnes correspondantes aux ids sélectionnés
  // }





















// class SmsMedecine extends StatefulWidget {
//   const SmsMedecine({Key? key}) : super(key: key);

//   @override
//   _SmsMedecineState createState() => _SmsMedecineState();
// }

// class _SmsMedecineState extends State<SmsMedecine> {
//   final TextEditingController _messageController = TextEditingController();
//   List<String> _selectedIds = [];

//   @override
//   void dispose() {
//     _messageController.dispose();
//     super.dispose();
//   }

//   void _toggleSelected(String id) {
//     setState(() {
//       if (_selectedIds.contains(id)) {
//         _selectedIds.remove(id);
//       } else {
//         _selectedIds.add(id);
//       }
//     });
//   }

//   void _sendMsg() {
//     String msg = _messageController.text;
//     // TODO: Envoyer le message à toutes les personnes correspondantes aux ids sélectionnés
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 208, 201, 201),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(115, 226, 71, 195),
//         title: Text('Pesonnel de Sante'),
//         centerTitle: true,
//       ),
//       floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             Navigator.of(context).pushNamed("SmsMedecine");
//           }),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: 20, // Remplacer 10 par le nombre d'ids disponibles
//               itemBuilder: (BuildContext context, int index) {
//                 String id = 'ID${index + 1}'; // Générer les ids automatiquement ou récupérer depuis une source de données
//                 return CheckboxListTile(
//                   title: Text(id),
//                   value: _selectedIds.contains(id),
//                   onChanged: (bool? value) {
//                     _toggleSelected(id);
//                   },
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 18,), 
//           TextField(
//             controller: _messageController,
//             decoration: const InputDecoration(
//               hintText: 'messge',
//                 border:
//                         OutlineInputBorder(borderSide: BorderSide(width: 1)),
//             ),
//           ),
//            SizedBox(height: 18,),
//           ElevatedButton(
//             onPressed: _sendMsg,
//             child: const Text('Envoyer'),
//           ),
//            SizedBox(height: 18,)
//         ],
//       ),
//     );
//   }
// }









































// class SmsMedecine extends StatefulWidget {
//   const SmsMedecine({super.key});

//   @override
//   State<SmsMedecine> createState() => _SmsMedecineState();
// }

// class _SmsMedecineState extends State<SmsMedecine> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//        backgroundColor: Color.fromARGB(115, 226, 71, 195),
//         title: Text('Personnel de sante'),
//         centerTitle: true,
//       ),
//       drawer: MyDrawer(),
//       body: Container(
//         child: Text('categorie'),
//       ),
//     );
//   }
// }
