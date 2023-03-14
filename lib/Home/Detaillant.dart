import 'package:flutter/material.dart';

import '../compounent/drawer.dart';

class FemmeDetails extends StatefulWidget {
  final Map<String, dynamic> femme;

  const FemmeDetails({Key? key, required this.femme}) : super(key: key);

  @override
  _FemmeDetailsState createState() => _FemmeDetailsState();
}

class _FemmeDetailsState extends State<FemmeDetails> {
  bool _isButtonCPN1 = false;
  bool _isButtonCPN2 = false;
  bool _isButtonCPN3 = false;
  bool _isButtonCPN4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 226, 71, 195),
        title: Text('Details Femmes Enceintes'),
        centerTitle: true,
      ),
      // drawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('id: ${widget.femme['id']}'),
            SizedBox(height: 8),
            Text('Nom: ${widget.femme['nom']}'),
            SizedBox(height: 8),
            Text('Prénom: ${widget.femme['prenom']}'),
            SizedBox(height: 8),
            Text('Numéro de téléphone: ${widget.femme['numero_tel']}'),
            SizedBox(height: 8),
            Text(
                'Date début de grossesse: ${widget.femme['date debut de grossesse']}'),
            SizedBox(height: 8),
            Text('Date SMS rappel CPN1: ${widget.femme['SMS rappel CPN1 ']}'),
            SizedBox(height: 8),
            Text('Date SMS rappel CPN2: ${widget.femme['SMS rappel CPN2 ']}'),
            SizedBox(height: 8),
            Text('Date SMS rappel CPN3: ${widget.femme['SMS rappel CPN3 ']}'),
            SizedBox(height: 8),
            Text('Date SMS rappel CPN4: ${widget.femme['SMS rappel CPN4 ']}'),
            SizedBox(height: 8),
            Text('Date de couchement: ${widget.femme['date de couchement']}'),
            SizedBox(height: 8),
            Text('Date de CPN: ${widget.femme['date de CPN']}'),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Text(_isButtonCPN1 ? 'CPN1' : 'CPN1'),
                      style: ButtonStyle(
                        backgroundColor: _isButtonCPN1
                            ? MaterialStateProperty.all<Color>(Colors.green)
                            : MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      onPressed: () {
                        setState(() {
                          _isButtonCPN1 = !_isButtonCPN1;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      child: Text(_isButtonCPN2 ? 'CPN2' : 'CPN2'),
                      style: ButtonStyle(
                        backgroundColor: _isButtonCPN2
                            ? MaterialStateProperty.all<Color>(Colors.green)
                            : MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      onPressed: () {
                        setState(() {
                          _isButtonCPN2 = !_isButtonCPN2;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      child: Text(_isButtonCPN3 ? 'CPN3' : 'CPN3'),
                      style: ButtonStyle(
                        backgroundColor: _isButtonCPN3
                            ? MaterialStateProperty.all<Color>(Colors.green)
                            : MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      onPressed: () {
                        setState(() {
                          _isButtonCPN3 = !_isButtonCPN3;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      child: Text(_isButtonCPN4 ? 'CPN4' : 'CPN4'),
                      style: ButtonStyle(
                        backgroundColor: _isButtonCPN4
                            ? MaterialStateProperty.all<Color>(Colors.green)
                            : MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      onPressed: () {
                        setState(() {
                          _isButtonCPN4 = !_isButtonCPN4;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
