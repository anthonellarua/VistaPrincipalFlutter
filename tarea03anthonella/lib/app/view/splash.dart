import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<SplashPage> {
  TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicativo'),
      ),
      body: Center(
        child: Container(
          width: 400,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 24.0),
              Text(
                '¡Bienvenido!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[700],
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Esta es la pantalla principal de mi aplicativo. - Anthonella',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Ingrese su nombre',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  String name = _nameController.text.trim();
                  if (name.isNotEmpty) {
                    _showSnackbar('¡Hola, $name!');
                  } else {
                    _showSnackbar('Por favor, ingrese su nombre');
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[700],
                  onPrimary: Colors.white,
                ),
                child: Text('¡Empezar!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
