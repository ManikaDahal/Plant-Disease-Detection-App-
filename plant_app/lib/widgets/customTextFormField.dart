import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Customformfield extends StatelessWidget {
  Function(String)? onChanged;
  String? Function(String?)? validator;
  String? labelText;
  Icon? prefixIcon;
  Widget? suffixIcon;
  bool? obscureText;
  TextInputType? keyboardType;
  InputDecoration? decoration;
  List<TextInputFormatter>? inputFormatters;
  Customformfield(
      {super.key,
      this.onChanged,
      this.validator,
      this.labelText,
      this.obscureText = false,
      this.decoration,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType,
      this.inputFormatters});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          // suffixIcon: Icon(Icons.error, color: Colors.red),
        ),
      ),
    );
  }
}



