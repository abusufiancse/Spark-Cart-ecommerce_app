import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InputDecoration fieldDecoration(Icon icon, String fieldText) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(color: Colors.grey.shade100, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(32.0)),
      borderSide: BorderSide(color: Colors.grey.shade100),
    ),
    alignLabelWithHint: true,
    fillColor: Colors.grey.shade100,
    filled: true,
    hintText: fieldText,
    hintStyle: const TextStyle(color: Colors.deepOrange),
    prefixIcon: icon,
  );
}

final emailField = TextField(
  textCapitalization: TextCapitalization.words,
  style: const TextStyle(color: Colors.deepOrange),
  cursorColor: Colors.deepPurple,
  keyboardType: TextInputType.emailAddress,
  decoration: fieldDecoration(
    const Icon(CupertinoIcons.mail_solid),
    'Phone, email or username',
  ),
);

final passwordField = TextField(
  textCapitalization: TextCapitalization.words,
  style: const TextStyle(color: Colors.deepOrange),
  autofocus: false,
  obscureText: true,
  keyboardType: TextInputType.visiblePassword,
  cursorColor: Colors.deepPurple,
  decoration: fieldDecoration(const Icon(CupertinoIcons.lock_fill), 'Password'),
);
