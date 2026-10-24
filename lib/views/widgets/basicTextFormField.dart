import 'package:flutter/material.dart' show StatelessWidget, Widget, BuildContext, Placeholder, TextFormField;

class Basictextformfield extends StatelessWidget {
  final String initialValue;

  const Basictextformfield({super.key, this.initialValue = ''});

  @override
  Widget build(BuildContext context) {
    return TextFormField(initialValue : initialValue);
  }
}
