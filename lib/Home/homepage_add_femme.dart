import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../compounent/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 226, 71, 195),
        title: Text('Hom Page'),
        centerTitle: true,
        // actions: <Widget>[
        //   IconButton(icon: Icon(Icons.search), onPressed: () {})
        // ],
      ),
      drawer: MyDrawer(),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 170,
            width: double.infinity,
            child: Carousel(
              images: [
                Image.asset('images/1.jpg', fit: BoxFit.cover),
                Image.asset('images/2.jpg', fit: BoxFit.cover),
                Image.asset(
                  'images/3.jpeg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Center(
            child: Text(
              'Enregisterer nouveau femme enceinte',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Identifiant',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer votre identifiant';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12),
                TextFormField(
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
                SizedBox(height: 12),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Prenom',
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
                SizedBox(height: 12),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Numero_tel',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer votre numero';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: 'Date debut de naissance',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'entrer date debut de naissance';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("homepage");
                  },
                  child: Text(
                    'Enregister',
                    style: TextStyle(fontSize: 20),
                  ),
                ))
              ],
            )),
          )
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

// class AppointmentReminderApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Appointment Reminder',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: AppointmentReminderScreen(),
//     );
//   }
// }

// class AppointmentReminderScreen extends StatefulWidget {
//   @override
//   _AppointmentReminderScreenState createState() =>
//       _AppointmentReminderScreenState();
// }

// class _AppointmentReminderScreenState extends State<AppointmentReminderScreen> {
//   late String _phoneNumber;
//   late DateTime _date;
//   late TimeOfDay _time;

//   // Future<void> _selectDate(BuildContext context) async {
//   //   final DateTime picked = await showDatePicker(
//   //       context: context,
//   //       initialDate: _date == null ? DateTime.now() : _date,
//   //       firstDate: DateTime.now(),
//   //       lastDate: DateTime(2100));
//   //   if (picked != null && picked != _date) {
//   //     setState(() {
//   //       _date = picked;
//   //     });
//   //   }
//   // }

//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay? picked =
//         await showTimePicker(context: context, initialTime: _time ?? TimeOfDay.now());
//     if (picked != null && picked != _time) {
//       setState(() {
//         _time = picked;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Appointment Reminder'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Enter the phone number:',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             TextFormField(
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Phone Number',
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   _phoneNumber = value;
//                 });
//               },
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Select the date:',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     _date == null
//                         ? 'Please select a date'
//                         : 'Selected date: ${_date.day}/${_date.month}/${_date.year}',
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.calendar_today),
//                   onPressed: () {
//                     _selectDate(context);
//                   },
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Select the time:',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     _time == null ? 'Please select a time' : 'Selected time: ${_time.format(context)}',
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.access_time),
//                   onPressed: () {
//                     _selectTime(context);
//                   },
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               child: Text('Send Reminder'),
//               onPressed: () {
//                 // TODO: Implement SMS sending functionality.
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//   late String _phoneNumber;
//  late DateTime _date;
//  late TimeOfDay _time;

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: _date,
//         firstDate: DateTime.now(),
//         lastDate: DateTime(2100));
//     if (picked != null && picked != _date) {
//       setState(() {
//         _date = picked;
//       });
//     }
//   }

//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay? picked =
//         await showTimePicker(context: context, initialTime: _time ?? TimeOfDay.now());
//     if (picked != null && picked != _time) {
//       setState(() {
//         _time = picked;
//       });
//     }
//   }
  
//   void setState(Null Function() param0) {
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Appointment Reminder'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Enter the phone number:',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             TextFormField(
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Phone Number',
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   _phoneNumber = value;
//                 });
//               },
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Select the date:',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     _date == null
//                         ? 'Please select a date'
//                         : 'Selected date: ${_date.day}/${_date.month}/${_date.year}',
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.calendar_today),
//                   onPressed: () {
//                     _selectDate(context);
//                   },
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Select the time:',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     _time == null ? 'Please select a time' : 'Selected time: ${_time.format(context)}',
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.access_time),
//                   onPressed: () {
//                     _selectTime(context);
//                   },
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               child: Text('Send Reminder'),
//               onPressed: () {
//                 // TODO: Implement SMS sending functionality.
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//  Container(child: Text('enregister nouveau femme enceinte',style: TextStyle(fontSize: 20),)),
//           Container(
//             padding: EdgeInsets.all(20),
//             child: Form(
//                 child: Column(
//               children: [
//                 TextFormField(
//                   decoration: InputDecoration(
                     
//                       hintText: 'code',
//                       border:
//                           OutlineInputBorder(borderSide: BorderSide(width: 1))),
//                 ),
//                 SizedBox(height: 12),
//                 TextFormField(
//                   decoration: InputDecoration(
//                       hintText: 'nom',
//                       border:
//                           OutlineInputBorder(borderSide: BorderSide(width: 1))),
//                 ),
//                 SizedBox(height: 12),
//                 TextFormField(
//                   decoration: InputDecoration(
                   
//                     hintText: 'prenom',
//                     border:
//                         OutlineInputBorder(borderSide: BorderSide(width: 1)),
//                   ),
//                 ),
//                 SizedBox(height: 12),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
                    
//                     hintText: 'numero_tel',
//                     border:
//                         OutlineInputBorder(borderSide: BorderSide(width: 1)),
//                   ),
//                 ),
//                 SizedBox(height: 12),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
                   
//                     hintText: 'date debut de grossesse',
//                     border:
//                         OutlineInputBorder(borderSide: BorderSide(width: 1)),
//                   ),
//                 ),
//                 Container(
//                     child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).pushReplacementNamed("homepage");
//                   },
//                   child: Text(
//                     'Enregister',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ))
//               ],
//             )),
//           )