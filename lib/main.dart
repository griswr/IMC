import 'package:flutter/material.dart';

void main() {
  runApp(calculadora());

  // Aluno: Keven Araújo Silva
  // 2 info vesp
}
class calculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp([]
      debugShowCheckedModeBanner: false,
      title: 'Calculadora IMC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: telaum(),
    );
  }
}
class telaum extends StatefulWidget {
  @override
  _teladois createState() => _teladois();
}
class _teladois extends State<telaum> {
  double _altura = 170;
  double _peso = 70;
  double _resultado = 0;
  void _calculateIMC() {
    double alturametro = _altura / 100;
    _resultado = _peso / (alturametro * alturametro);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/peso.jpg',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 16.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Altura (CM)'),
              onChanged: (value) {
                _altura = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Peso (KG)'),
              onChanged: (value) {
                _peso = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calculateIMC,
              child: Text('Calcular'),
            ),
            SizedBox(height: 18.0),
            Text(
              'IMC: ${_resultado.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
