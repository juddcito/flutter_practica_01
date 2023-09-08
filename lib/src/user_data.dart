

import 'package:flutter/material.dart';
import 'package:practica_01/src/my_alert_dialog.dart';

class DatosUsuarios extends StatefulWidget {
  const DatosUsuarios({super.key});

  @override
  State<DatosUsuarios> createState() => _DatosUsuariosState();
}

class _DatosUsuariosState extends State<DatosUsuarios> {
  
  var _name;
  var _phone;

  final nameControl = TextEditingController();
  final phoneControl = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Práctica 01'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              'assets/images/user.png',
              scale: 0.8,
            ),

            const SizedBox(height: 10.0),

            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nameControl,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400)
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    prefixIcon: const Icon(Icons.perm_identity),
                    contentPadding: const EdgeInsets.all(5),
                    hintText: 'Ingresa tu nombre',
                    hintStyle: TextStyle(color: Colors.grey[500])
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10.0),

            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: phoneControl,
                  keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      prefixIcon: const Icon(Icons.phone),
                      contentPadding: const EdgeInsets.all(5),
                      hintText: 'Ingresa tu número de celular',
                      hintStyle: TextStyle(color: Colors.grey[500])
                    ),
                ),
              ),
            ),
      
            const SizedBox(height: 10),
      
            ElevatedButton(
              onPressed: () {
                _name = nameControl.text;
                _phone = phoneControl.text;
      
                setState(() {
                  showAlertDialog(
                    context,
                    'El usuario $_name tiene un teléfono $_phone',
                    'Mi app :)',
                    'Ok',
                    ':('
                  );
                });
              },
              child: const Text('Enviar'),   
            )
          ],
        ),
      ),
    );
  }
}