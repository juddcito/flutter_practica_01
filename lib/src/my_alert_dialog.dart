

import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, String msg, String title, String buttonOk, String buttonCancel){

  Widget btnCancelar = ElevatedButton(
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: Text(buttonCancel)
  );

  Widget btnOk = ElevatedButton(
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: Text(buttonOk)
  );

  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(msg),
    actions: [
      btnCancelar,
      btnOk
    ],
  );

  showDialog(
    context: context,
    builder: (context) {
      return alert;
    },
  );

}