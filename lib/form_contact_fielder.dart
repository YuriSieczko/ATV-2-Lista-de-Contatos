import 'package:contact_crud_hive/model/user.dart';
import 'package:flutter/material.dart';

class FormContactFielder extends StatelessWidget {
  TextEditingController controller;
  String hintTextName;
  IconData iconData;
  TextInputType textInputType;

  FormContactFielder(
      {super.key,
      required this.controller,
      required this.hintTextName,
      required this.iconData,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        icon: Icon(iconData),
        hintText: hintTextName,
        filled: true,
      ),
      keyboardType: textInputType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por Favor Digite $hintTextName';
        }
        if (hintTextName == 'Email' && !validateEmail(value)) {
          return 'Digite um Email Válido';
        }
        if (hintTextName == 'Nome' && !validateNome(value)) {
          return 'Digite um Nome Válido';
        }
        if (hintTextName == 'Código' && !validateCodigo(value)) {
          return 'Digite apenas Numeros';
        }
        if (hintTextName == 'Telefone' && !validateTelefone(value)) {
          return 'Digite um Telefone Valido';
        }
      },
    );
  }
}

validateEmail(String email) {
  final emailReg = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  return emailReg.hasMatch(email);
}

bool validateNome(String value) {
  final RegExp regex = RegExp(r'^[a-zA-Z]+$');
  return regex.hasMatch(value);
}

bool validateCodigo(String value) {
  final RegExp regex = RegExp( r'(^[0-9]*$)');
  return regex.hasMatch(value);
}

bool validateTelefone(String value) {
  final RegExp regex = RegExp( r'(^[0-9]*$)');
  return regex.hasMatch(value);
}
