import 'package:flutter/material.dart';

class CuidapetTextformField extends StatelessWidget {
  final String label;

  const CuidapetTextformField({ super.key, required this.label });

   @override
   Widget build(BuildContext context) {
       return TextFormField(
         decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            gapPadding: 0
          )
         ),
       );
  }
}